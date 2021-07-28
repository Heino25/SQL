# numbers = [1, 2, 5]
# doubled = [x * 2 for x in numbers]

# print(doubled)

friends = ["Rolf", "Sam", "Samantha", "Saurabh", "Jen"]
starts_s = [friend for friend in friends if friend.startswith("S")]

# for friend in friends:
#     if friend.startswith("S"):
#         starts_s.append(friend)

print(starts_s)
print(friends)
print(friends is starts_s)
print("friends: ", id(friends), "starts_:s", id(starts_s))