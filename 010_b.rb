n, f = [gets, gets.split.map(&:to_i)]

puts f.reduce(0) { |sum, i|
  while i % 2 == 0 || i % 3 == 2
    i -= 1
    sum += 1
  end
  sum
}
