class student:
    def __init__(self,name,class1):
        self.name = name
        self.class1 = class1
    def get_name(self):
        return self.name
std1= student("momofor","3A")
print("And his name is ",std1.name , "And he is " , std1.class1 )
print("What name do you want your character to have ?")
username= input("")
print("Wow!", username , "That's such a great name :D")
print("So Now Let's Start ")
print("Choose Your Mode (easy/normal/hard)")
choice1 = input("")
if choice1.strip == "easy" :
    print("Ok Lets Get Started Kiddo")
elif choice1.strip == "normal":
    print("Ok You Got Normal Guts")
elif choice1.strip == "hard":
    print("""Ok Ok Ok
     so hard mode it is my kid OK LET'S GOOO""")
else :
    print("Worng Try Again :D")
print("Thank's for playing this bad non optimized game alpha of alpha")
