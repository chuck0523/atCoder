patern = [
  ['a', 'b', 'c'],
  ['b', 'c', 'a'],
  ['c', 'a', 'b']
]
n = gets.to_i
str = gets

if n % 2 === 0 || str[str.length / 2 - 1] != 'b'
  puts -1
  exit
end

n.times do |t|
  if str[t] != patern[n % 3][t % 3]
    puts -1
    exit
  end
end

puts str.length / 2 - 1
