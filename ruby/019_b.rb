str = gets.chomp.split('')
a = str[0]
same = 1

for i in 1..str.size do
  if a == str[i]
    same += 1
  else
    print a + same.to_s
    a = str[i]
    same = 1
  end
end

puts
