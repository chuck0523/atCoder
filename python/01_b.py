# a = int(input())
# if a < 100:
#     print('00')
# elif 100 <= a < 5000:
#     print("{0:02d}".format(int(a*0.01)))
# elif 6000 <= a <= 30000:
#     print(int(a/1000 + 50))
# elif 35000 <= a <= 70000:
#     print(int((a/1000 - 30) / 5 + 80))
# else:
#     print(89)

km = int(input()) / 1000

if km < 0.1:
    vv = 0
elif km <= 5:
    vv = km * 10
elif km <= 30:
    vv = km + 50
elif km <= 70:
    vv = (km - 30) / 5 + 80
else:
    vv = 89
print(str(int(vv)).zfill(2))
