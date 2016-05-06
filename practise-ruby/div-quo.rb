# ruby2.1で検証。

#
# 割り算
#

# divメソッド
puts 10.div(3) # 3
puts 10.div(3.1) # 3
puts 10.1.div(3) # 3
puts 10.1.div(3.1) # 3
# 商を整数で取得。少数以下は切り捨て。

# quoメソッド
puts 10.quo(3) # 10/3 ←むむ??
puts 10.quo(3.1) # 3.225806451612903
puts 10.1.quo(3) # 3.3666666666666667
puts 10.1.quo(3.1) # 3.258064516129032
# 商を浮動小数点で取得。

# ちなみに、/を使った演算では以下のとおり。
# 除算の両方が整数の場合のみ、商は整数。それ以外は商は浮動小数点となる。


#
# 剰余メソッド
#

# moduloメソッド
puts 10.modulo(3) # 1
puts 10.modulo(3.1) # 0.6999999999999997
puts 10.1.modulo(3) # 1.0999999999999996
puts 10.1.modulo(3.1) # 0.7999999999999994
# moduloは%と全く同じ動作。

puts 10.modulo(3) # 1
puts 10.modulo(-3) # -2
puts -10.modulo(3) # 2
puts -10.modulo(-3) # -1
# 除算を行う数値の符号が、剰余の符号となる。

# remainderメソッド
# 割愛

#
# 商と剰余を求める
#

# divmodメソッド
puts 10.divmod(3) # [3, 1]
# 商はdivメソッドの結果が、剰余はmoduloメソッドの結果が得られる。
