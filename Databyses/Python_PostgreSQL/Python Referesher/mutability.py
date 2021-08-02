from typing import List


class Student:
    def __init__(self, name: str, grades: List[int] = []): #This is bad!
        self.name = name
        self.grades = grades

    def take_exam(self, result):
        self.grades.append(result)


bob = Student("Bob")
bob.take_exam(90)
print(bob.grades)