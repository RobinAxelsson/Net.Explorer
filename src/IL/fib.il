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
}