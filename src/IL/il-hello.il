// .assembly extern System.Runtime { 
//     .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A ) 
//     .ver 9:0:0:0 }
.assembly extern System.Console
{ 
    .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A ) 
    .ver 9:0:0:0
}
.assembly min.project {}
.module il_hello.exe
.method static void Main()
{
    .maxstack 1
    .entrypoint
    ldstr "IL hello"
    call void [System.Console]System.Console::WriteLine(string)
    ret
}