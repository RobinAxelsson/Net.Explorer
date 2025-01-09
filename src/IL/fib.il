.assembly extern System.Console
{ 
    .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A ) 
    .ver 9:0:0:0
}
.assembly fib {}
.module fib.exe
.method static int32 Main() cil managed
{
    .entrypoint
    .maxstack  2
    .locals init (int32 V_0, //inits local vars
             int32 V_1,
             int32 V_2,
             bool V_3,
             bool V_4,
             int32 V_5)
             
    ldc.i4.0
    stloc.0
    ldc.i4.1
    stloc.1
    ldloc.0
    call       void [System.Console]System.Console::WriteLine(int32)
    ldloc.1
    call       void [System.Console]System.Console::WriteLine(int32)
    br.s       IL_0034

    IL_0015:
    ldloc.0
    ldloc.1
    add
    stloc.2
    ldloc.2
    ldc.i4     1000
    cgt
    stloc.3
    ldloc.3
    brfalse.s  IL_0028

    br.s       IL_0039

    IL_0028:  
    ldloc.2
    call       void [System.Console]System.Console::WriteLine(int32)
    ldloc.1
    stloc.0
    ldloc.2
    stloc.1

    IL_0034:
    ldc.i4.1
    stloc.s    V_4
    br.s       IL_0015

    IL_0039:
    ldc.i4.0
    stloc.s    V_5
    br.s       IL_003e

    IL_003e:
    ldloc.s    V_5
    ret
}