# Welcome to my first ever game made in python :D
print("Hello and Welcome to my first game :D")
print("I hope you will enjoy it and let's start")

# Data Collection
print("What is your name?")
name = input()
print("Nice to meet you ", name)
print ("How old are you ?")
age = int(input())

#age restriction 
if (age >= 18):
    {
        print("ok")

    }
else:
    {
        print("you aren't old enough to play")
    }

#Game 

print("Now let's start")
print("You find yourself drowning (swim/die)")
choice1_1_1 = input()

if choice1_1_1.lower().strip() == "swim":
    print("you swim to safety and find a shark(fight/die/)")
    choice1_2_1 =input()
    if choice1_2_1.lower().strip() == "fight":
        print("you killed the shark and won")
    else:
        print("you die peacefuly in a sea of blood")
else:
    print("you die by drowning")
