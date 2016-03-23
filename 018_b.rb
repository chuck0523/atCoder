str = gets.chomp
N = gets.to_i

N.times do |t|
  first, last = gets.chomp.split.map{ |i| i.to_i - 1 }
  str[first..last] = str[first..last].reverse
end

puts str
