int_array = [1, 2, 3, 4, 5]
char_array = ['a', 'b', 'c', 'd', 'e']

# eachとmapの違いは、返り値。mapは処理後の配列を返す。
puts int_array.each { |element| element * 2 } # 1 2 3 4 5
puts int_array.map { |element| element * 2 } # 2 4 6 8 10

# 参考URL:http://manji602.hatenablog.com/entry/2016/01/01/145346

# each_with_indexでindexをブロックに渡せる。
char_array.each_with_index { |element, index| puts "#{index}. #{element}"}
# 0. a
# 1. b
# 2. c
# 3. d
# 4. e

# 参考URL:http://thinca.hatenablog.com/entry/20090410/1239374983


# injectとは、コレクションに対して処理を加えつつ実行結果を引き回せる。
# 以下の例では、sumが次のループ実行へと引き継がれる。
puts int_array.inject(0) {|sum, i| sum + i} # 15

# eachで書くと、以下のようになる。
sum = 0
int_array.each {|n| sum += n}
puts sum # 15

# injectの引数はsumの初期値。
puts int_array.inject(10) {|sum, i| sum + i} # 25

# 参考URL:http://kenkiti.hatenadiary.jp/entry/20090114/ruby_inject

# injectって、JavaScriptで言うところのreduce？
puts int_array.reduce {|sum, n| sum + n} # 15

# 処理としては一緒ですね。発想が違うようです。
# 参考URL：http://magazine.rubyist.net/?0038-MapAndCollect#l9
