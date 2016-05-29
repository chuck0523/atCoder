from functools import reduce

print((reduce(lambda a, b: a + b * 10000, [10000, int(input())])) // 2)
