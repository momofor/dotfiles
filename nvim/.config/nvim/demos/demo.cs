using System;

namespace demo
{
  class Program
  {
        static void Main(string[] args)
        {
            System.Console.WriteLine("what is your name ?");
            string Name = Console.ReadLine();
            System.Console.WriteLine("Hello " + Name);
            string[] cool = { "hello" ,  "world" };
            
            public class Point
            {
                public int X { get; }
                public int Y { get; }
                
                public Point(int x, int y) => (X, Y) = (x, y);
            }
            var me = new Point(36,36);
        }
    }
}
