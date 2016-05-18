a, b = [gets, gets].map(&:to_f)

puts a % b == 0 ? 0 : ((a / b).ceil * b - a).to_i
