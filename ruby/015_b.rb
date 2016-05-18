a = gets.to_i
ary = gets.split(" ").map(&:to_i)

sum = 0.0
bugs = a

a.times do |n|
  sum += ary[n]
  bugs -= 1 if ary[n] == 0
end

puts (sum / bugs).ceil
