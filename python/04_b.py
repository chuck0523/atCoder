#print([i for i in [[],[],[],[]] for a in 'abc'])
# ['a0', 'b0', 'c0', 'a1', 'b1', 'c1', 'a2', 'b2', 'c2']

# outer = []
# for a in range(4):
#     inner = []
#     for a in input():
#         inner.append(a)
#     else:
#         outer.append(inner[::-1])
#
# print(outer[::-1])


list(map(lambda row: print(row), ["".join([line for line in input()][::-1]) for time in range(4)][::-1]))
