class student:
    def __init__(self, name, class1, age):
        self.name = name
        self.class1 = class1
        self.age = age

    def get_name(self):
        return self.name


std1 = student("momofor", "3A", 13)
print("And his name is ", std1.name, "And he is ", std1.class1)
print("What name do you want your character to have ?")
username = input("")
print("Wow!", username, "That's such a great name :D")
print("So Now Let's Start ")

print("Choose Your Mode (easy/normal/hard)")
choice1 = input("")
if choice1.strip == "easy":
    print("Ok Lets Get Started Kiddo")
elif choice1.strip == "normal":
    print("Ok You Got Normal Guts")
elif choice1.strip == "hard":
    print(
        """Ok Ok Ok
     so hard mode it is my kid OK LET'S GOOO"""
    )
else:
    print("Worng Try Again :D")
print("Thank's for playing this bad non optimized game alpha of alpha")
print("Hello world I'm happy to be here")
if username == "momofor":
    print("OMg Its momofor")
if username == "momofor":
    print(
        "Wooowe you are really momofor how does it feel being an amazing hero mate i bet its like crazy"
    )


class teacher:
    def __init__(self, name, age):
        self.name = name
        self.age = age


ahmed = teacher("cool", 15)
print(ahmed.name, ahmed.age)


class HelloWorld:
    def __init__(self, name, age, grade):
        self.name = name
        self.age = age
        self.grade = grade
