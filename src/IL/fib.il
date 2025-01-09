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
             bool V_3)
    
    Setup:
    ldc.i4.0    //Push int 0
    stloc.0     //V_0 = 0
    ldc.i4.1    //Push int 1
    stloc.1     //V_1 = 1
    ldloc.0     //Push V_0
    call       void [System.Console]System.Console::WriteLine(int32) //print 0
    ldloc.1     //Push V_1
    call       void [System.Console]System.Console::WriteLine(int32) //print 1

    AddNumbers:
    ldloc.0    //push V_0
    ldloc.1    //push V_1
    add        //add and pop V_0 V_1 push sum
    stloc.2    //pop result V_2 | V_2 = V_0 + V_1
    ldloc.2    //push V_2
    ldc.i4     1000 //push const int 1000
    cgt        //compare greater then V_2 > 1000
    brtrue.s  End //short jump if true

    PrintCurrent:  
    ldloc.2    //push V_2 onto stack
    call       void [System.Console]System.Console::WriteLine(int32) //print V_2
    
    MoveNumbers:
    ldloc.1    //push V_1
    stloc.0    //pop V_0 => V_0=V_1
    ldloc.2    //push V_2
    stloc.1    //pop V_1 => V_1=V_3

    br.s       AddNumbers

    End:
    ldc.i4.0   //push integer value 0
    ret
}