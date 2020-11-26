class student:
    def __init__(self,name,class1):
        self.name = name
        self.class1 = class1
    def get_name(self):
        return self.name
std1= student("momofor","3A")
print("And his name is ",std1.name , "And he is " , std1.class1 )
