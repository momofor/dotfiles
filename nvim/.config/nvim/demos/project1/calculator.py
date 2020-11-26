import math
#calculator
print("what is number1 ")
number1 = int(input())
print("what operation do you want (+ - / * s)")
operation = input()
print("what is the second number?")
number2 = int(input())
if operation == "*" :
    print(number1 * number2)
elif operation == "-":
    print(number1 - number2)
elif operation == "/":
    print(number1 / number2)
elif operation == "+":
    print(number1 + number2)
elif operation == "s":
    print("the square root of ",number1 , "is " , math.sqrt(number1))
