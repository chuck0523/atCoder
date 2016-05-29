replace = [i for i in 'atcoder']

def isCharMatch(a, b):
    if a == b:
        return True
    elif a == '@' and b in replace:
        return True
    elif a in replace and b == '@':
        return True
    else:
        return False

print('You can win' if all(list(map(lambda a: isCharMatch(a[0], a[1]) ,list(zip([i for i in input()], [i for i in input()]))))) else 'You will lose')
