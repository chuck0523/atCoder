# ary = [0, 0, 1]
#
# for a in 3..gets.to_i do
#   ary << (ary[a - 1] + ary[a - 2] + ary[a - 3])
# end
#
# puts ary[ary.size - 2] % 10007

n = gets.to_i
puts (3..n - 1).to_a.inject([0, 0, 1]) {|tri, a| tri << ((tri[tri.size - 1] + tri[tri.size - 2] + tri[tri.size - 3]) % 10007)}[n-1]
