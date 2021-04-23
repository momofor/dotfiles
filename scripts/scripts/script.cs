using System
namespace HelloWorld
{
class App {
    public static void Main(string[] args) {
        int addition = AddNumbers(1 , 2);
        Console.WriteLine(addition);
    }
    public static int AddNumbers(int num1 , int num2)
    {
        int result = num1 + num2;
        return result;
    }
}
}
