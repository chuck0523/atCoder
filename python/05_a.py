from functools import reduce

print(reduce(lambda x, y: y // x,list(map(int, input().split()))))
