using System;
using BenchmarkDotNet.Attributes;
using Manual;

namespace Net.Explorer.Benchmarks
{
    public class FibonacciBenchmarks
    {
        [Benchmark]
        public void IL_Fibonacci()
        {
            Fibonacci.RunFibonacci(1000);
        }

        [Benchmark]
        public void CSharp_Fibonacci()
        {
            CSharpFib.RunFibonacci(1000);
        }
    }

    public static class CSharpFib
    {
        public static void RunFibonacci(int n)
        {
            int a = 0;
            int b = 1;
            Console.WriteLine(a);
            Console.WriteLine(b);

            for (int i = 0; i < n; i++)
            {
                int temp = a;
                a = b;
                b = temp + b;
                Console.WriteLine(b);
            }
        }
    }
}
