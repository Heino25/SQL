def divide(dividend, divisor):
    if divisor == 0:
        print("Divisor cannot be 0.")
        return

    return dividend  / divisor


grades = []

print("Welcom to the average grade program.")

if len(grades) == 0:
    print("You dont have grades yet.")

average = divide(sum(grades), len(grades))

print(f"The average grade is {average}")