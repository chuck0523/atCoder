a, b, c = gets.split(" ").map(&:to_i)


if a + b == c && a - b == c
  puts '?'
  exit
end

if a + b == c
  puts '+'
  exit
end

if a - b == c
  puts '-'
  exit
end

puts '!'
