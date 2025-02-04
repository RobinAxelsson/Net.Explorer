"""
Following this documentation to see how you can view jitted assembly dumps
https://github.com/dotnet/runtime/blob/9cf8a80db3354173cfd25dea4660632861dee0eb/docs/design/coreclr/jit/viewing-jit-dumps.md
"""

import subprocess
import sys
import os
from pathlib import Path

def run_dotnet_redirect_asm(dotnet_exe, disasm_symbol, output_file):
    try:
        if not output_file:
            output_file = str(Path(dotnet_exe).with_suffix(".s"))

        os.environ["DOTNET_JitDisasm"] = disasm_symbol
        with open(output_file, 'w') as file:
            # Start the subprocess
            process = subprocess.Popen(
                ["dotnet", dotnet_exe],
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                text=True
            )

            redirect_to_file = False
            has_jit_disasm = False

            for line in process.stdout:
                if line.startswith("; Assembly"):
                    redirect_to_file = True
                    has_jit_disasm =  True

                if redirect_to_file:
                    file.write(line)

                if not redirect_to_file:
                    print(line, end='')

                if line.startswith("; Total bytes"):
                    process.kill()
                    redirect_to_file = False

            # process.wait()
            
            if has_jit_disasm:
                print("Disassembly written to: " + output_file)
            else:
                print("Disassembly failed, expect no output file")


    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    if len(sys.argv) < 3 or len(sys.argv) > 4:
        print("Usage: python script.py <path_to_dotnet_exe> <disasm_symbol> [output_file]")
        print("\nArguments:")
        print("  <path_to_dotnet_exe>  Path to the .NET executable file.")
        print("  <disasm_symbol>      The symbol to disassemble.")
        print("  [output_file]        (Optional) Path to the output file (default: <dotnet_exe>.s).")
        sys.exit(1)

    dotnet_exe = sys.argv[1]
    disasm_symbol = sys.argv[2]
    output_file = sys.argv[3] if len(sys.argv) == 4 else ""

    # Validate that the paths are valid
    if not Path(dotnet_exe).is_file():
        print(f"Error: The path '{dotnet_exe}' is not a valid file.")
        sys.exit(1)

    if output_file and not Path(output_file).parent.exists():
        print(f"Error: The directory for the output file '{output_file}' does not exist.")
        sys.exit(1)

    run_dotnet_redirect_asm(dotnet_exe, disasm_symbol, output_file)
