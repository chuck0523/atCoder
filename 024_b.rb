n, t = gets.chomp.split.map(&:to_i)

now = 0
close = 0
sum = 0

n.times do |i|
  now = gets.to_i

  sum += t

  if close - now > 0
    sum -= close - now
  end
  close = now + t

end

puts sum
