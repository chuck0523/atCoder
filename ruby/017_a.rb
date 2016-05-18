sum = 0
3.times do
  a, b = gets.split.map(&:to_f)
  sum += a * (b / 10)
end
puts sum.to_i
