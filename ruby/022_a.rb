n, min, max = gets.split(" ").map(&:to_i)
w = 0
i = 0

n.times do |t|
  w += gets.to_i
  if (min..max).include? w
    i += 1
  end
end

puts i
