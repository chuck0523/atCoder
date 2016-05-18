n = gets.to_f

puts (n / 2).ceil

while n > 1
  puts 2
  n -= 2
end

puts n.to_i if n != 0
