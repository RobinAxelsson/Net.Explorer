.assembly extern System.Console
{ 
    .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A ) 
    .ver 9:0:0:0
}
.assembly fib {}
.module fib.exe

.class public auto ansi sealed Fibonacci
{
    .method static int32 Main() cil managed
    {
        .entrypoint
        .maxstack 1
        call       void Fibonacci::RunFibonacci()
        ldc.i4.0   //push integer value 0
        ret
    }

    .method static void RunFibonacci() cil managed
    {
                .maxstack  2
        .locals init (int32 a,
                int32 b,
                int32 c)
        
        Setup:
        ldc.i4.0    //Push int 0
        stloc.0     //a = 0
        ldc.i4.1    //Push int 1
        stloc.1     //b = 1
        ldloc.0     //Push a
        call       void [System.Console]System.Console::WriteLine(int32) //print 0
        ldloc.1     //Push b
        call       void [System.Console]System.Console::WriteLine(int32) //print 1

        AddNumbers:
        ldloc.0    //push a
        ldloc.1    //push b
        add        //add and pop a b push sum
        stloc.2    //pop result c | c = a + b
        ldloc.2    //push c
        ldc.i4     1000 //push const int 1000
        cgt        //compare greater then c > 1000
        brtrue.s  End //short jump if true

        PrintCurrent:  
        ldloc.2    //push c onto stack
        call       void [System.Console]System.Console::WriteLine(int32) //print c
        
        MoveNumbers:
        ldloc.1    //push b
        stloc.0    //pop a => a=b
        ldloc.2    //push c
        stloc.1    //pop b => b=c

        br.s       AddNumbers

        End:
        ret
    }
}