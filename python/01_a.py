# a = int(input())
# b = int(input())
# print(a - b)
#
# a, b = map(int, [input(), input()])
# print(a - b)
#
# print(int(input()) - int(input())
from functools import reduce
print(reduce(lambda a,b: a -b , [int(input()) for i in range(2)]))
