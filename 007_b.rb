# str = gets.chomp
#
# if str == 'a'
#   puts '-1'
# elsif str.size == 1
#   puts (str.ord - 1).chr
# else
#   puts str[0, str.size - 1]
# end

puts gets.chomp == 'a' ? -1 : 'a'
