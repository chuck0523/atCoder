a, b, c, k = gets.chomp.split.map(&:to_i)
s, t = gets.chomp.split.map(&:to_i)

discount = 0
if s + t >= k then
  discount = c * ( s + t )
end

puts a * s + b * t - discount
