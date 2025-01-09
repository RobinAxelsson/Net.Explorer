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
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             bool V_3,
             bool V_4,
             int32 V_5)
    
    Setup:
    ldc.i4.0    //Push int 0
    stloc.0     //V_0 = 0
    ldc.i4.1    //Push int 1
    stloc.1     //V_1 = 1
    ldloc.0     //Push V_0
    call       void [System.Console]System.Console::WriteLine(int32) //print 0
    ldloc.1     //Push V_1
    call       void [System.Console]System.Console::WriteLine(int32) //print 1
    br.s       IL_0034 //unconditional jump .s short jump -128 +127 1byte

    AddNumbers:
    ldloc.0    //push V_0
    ldloc.1    //push V_1
    add        //add and pop V_0 V_1 push sum
    stloc.2    //pop result V_2 | V_2 = V_0 + V_1
    ldloc.2    //push V_2
    ldc.i4     1000 //push const int 1000
    cgt        //compare greater then V_2 > 1000
    stloc.3    //pop result into V_3
    ldloc.3    //push result V_3
    brfalse.s  PrintCurrent

    br.s       IL_0039 //unconditional short jump

    PrintCurrent:  
    ldloc.2    //push V_2 onto stack
    call       void [System.Console]System.Console::WriteLine(int32) //print V_2
    
    MoveNumbers:
    ldloc.1    //push V_1
    stloc.0    //pop V_0 => V_0=V_1
    ldloc.2    //push V_2
    stloc.1    //pop V_1 => V_1=V_3

    IL_0034:
    ldc.i4.1   //push int const 1
    stloc.s    V_4 //stores 1 in bool V_4, V_4 = true
    br.s       AddNumbers

    IL_0039:
    ldc.i4.0   //push integer value 0
    stloc.s    V_5
    br.s       IL_003e

    IL_003e:
    ldloc.s    V_5
    ret
}