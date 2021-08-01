def divide(dividend, divisor):
    if divisor == 0:
        raise ZeroDivisionError("Divisor cannot be. ")

    return dividend / divisor

def calculate(*values, operator):
    return operator(*values)