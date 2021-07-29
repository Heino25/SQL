# student = {"name": "Rolf", "grades": (89, 90, 93, 78, 90)}

# def avarage(sequence):
#     return sum(sequence) / len(sequence)

# print(avarage(student["grades"]))

class Student:
    def __init__(self):
        self.name = "Rolf"
        self.grades = (90, 90, 93, 78, 90)

    def avarage(self):
        return sum(self.grades) / len(self.grades)

student = Student()
print(Student.avarage(student))
# print(student.name)
# print(student.grades)