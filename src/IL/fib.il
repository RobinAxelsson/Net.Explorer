.assembly extern System.Console
{ 
    .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A ) 
    .ver 9:0:0:0
}
.assembly fib {}
.module fib.exe

.class public auto ansi sealed Manual.Fibonacci
{
    .method static int32 Main() cil managed
    {
        .entrypoint
        .maxstack 1
        ldc.i4     1000
        call       void Manual.Fibonacci::RunFibonacci(int32)
        ldc.i4.0   //push integer value 0
        ret
    }

    .method static void RunFibonacci(int32) cil managed
    {

        .maxstack  2
        .locals init (int32 a, int32 b, int32 c)
 
        //a = 0
        ldc.i4.0
        stloc.0

        //b = 0
        ldc.i4.1
        stloc.1

        //print a
        ldloc.0
        call       void [System.Console]System.Console::WriteLine(int32)

        //print b
        ldloc.1
        call       void [System.Console]System.Console::WriteLine(int32)

        AddNumbers:
        ldloc.0
        ldloc.1
        add

        //c = a + b
        stloc.2

        //compare sum > 1000
        ldloc.2
        ldarg.0
        cgt

        //jump end if true
        brtrue.s  End

        //print new fibonacci  
        ldloc.2
        call       void [System.Console]System.Console::WriteLine(int32)
        
        //update a = b
        ldloc.1
        stloc.0

        //update b = c
        ldloc.2
        stloc.1

        //unconditionally loop
        br.s       AddNumbers

        End:
        ret
    }
}