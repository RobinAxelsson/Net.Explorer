
//  .NET IL Disassembler.  Version 9.0.0



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 9:0:0:0
}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 9:0:0:0
}
.assembly 'fibonacci'
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56   // ....NETCoreApp,V
                                                                                                              65 72 73 69 6F 6E 3D 76 39 2E 30 01 00 54 0E 14   // ersion=v9.0..T..
                                                                                                              46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79   // FrameworkDisplay
                                                                                                              4E 61 6D 65 08 2E 4E 45 54 20 39 2E 30 )          // Name..NET 9.0
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 06 63 73 2D 66 69 62 00 00 )                // ...cs-fib..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 2E 31 2E 30 2E 30 2B 37 33 38 39 38 63 32   // ...1.0.0+73898c2
                                                                                                                   36 64 31 37 66 61 64 62 34 64 39 36 30 31 34 34   // 6d17fadb4d960144
                                                                                                                   36 30 65 64 62 30 34 31 32 39 61 66 65 35 63 64   // 60edb04129afe5cd
                                                                                                                   35 00 00 )                                        // 5..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 06 63 73 2D 66 69 62 00 00 )                // ...cs-fib..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 06 63 73 2D 66 69 62 00 00 )                // ...cs-fib..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module 'fibonacci.dll'
// MVID: {f1f2363b-3d86-4e0b-9d13-2d1f1c39425a}
.custom instance void [System.Runtime]System.Runtime.CompilerServices.RefSafetyRulesAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x0000026C685F0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Program
       extends [System.Runtime]System.Object
{
  .method public hidebysig static int32  Main(string[] args) cil managed
  {
    .entrypoint
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    // Code size       65 (0x41)
    .maxstack  2
    .locals init (int32 V_0, //inits local vars
             int32 V_1,
             int32 V_2,
             bool V_3,
             bool V_4,
             int32 V_5)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.1
    IL_0004:  stloc.1
    IL_0005:  ldloc.0
    IL_0006:  call       void [System.Console]System.Console::WriteLine(int32)
    IL_000b:  nop
    IL_000c:  ldloc.1
    IL_000d:  call       void [System.Console]System.Console::WriteLine(int32)
    IL_0012:  nop
    IL_0013:  br.s       IL_0034

    IL_0015:  nop
    IL_0016:  ldloc.0
    IL_0017:  ldloc.1
    IL_0018:  add
    IL_0019:  stloc.2
    IL_001a:  ldloc.2
    IL_001b:  ldc.i4     0x3e8 //1000
    IL_0020:  cgt
    IL_0022:  stloc.3
    IL_0023:  ldloc.3
    IL_0024:  brfalse.s  IL_0028

    IL_0026:  br.s       IL_0039

    IL_0028:  ldloc.2
    IL_0029:  call       void [System.Console]System.Console::WriteLine(int32)
    IL_002e:  nop
    IL_002f:  ldloc.1
    IL_0030:  stloc.0
    IL_0031:  ldloc.2
    IL_0032:  stloc.1
    IL_0033:  nop
    IL_0034:  ldc.i4.1
    IL_0035:  stloc.s    V_4
    IL_0037:  br.s       IL_0015

    IL_0039:  ldc.i4.0
    IL_003a:  stloc.s    V_5
    IL_003c:  br.s       IL_003e

    IL_003e:  ldloc.s    V_5
    IL_0040:  ret
  } // end of method Program::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

} // end of class Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\out\cs-fib.dasm.res
