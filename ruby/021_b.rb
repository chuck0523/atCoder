a = gets
b = gets.split(' ')
c = gets
d = gets.split(' ')

puts b.concat(d).length == b.concat(d).uniq.length ? 'YES' : 'NO'
