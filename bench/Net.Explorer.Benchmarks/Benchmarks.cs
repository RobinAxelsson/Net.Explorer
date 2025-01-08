using System;
using System.Text;
using BenchmarkDotNet;
using BenchmarkDotNet.Attributes;

namespace Net.Explorer.Benchmarks
{
    public class Benchmarks
    {
        [Benchmark]
        public void Scenario1()
        {
            Console.WriteLine("Hello");
            Console.WriteLine("World");
        }

        [Benchmark]
        public void Scenario2()
        {
            Console.WriteLine("Hello\nWorld");
        }
    }
}
