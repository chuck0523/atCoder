# print(('').join(list(filter(lambda c: c not in ['a', 'i', 'u', 'e', 'o'], [i for i in input()]))))

print(('').join([i for i in input() if i not in ['a', 'i', 'u', 'e', 'o']]))
