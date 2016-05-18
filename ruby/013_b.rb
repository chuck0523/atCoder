a, b = [gets, gets].map(&:to_i)

puts [(a - (b - 10)).abs, (a - b).abs, (a - (b + 10)).abs].min
