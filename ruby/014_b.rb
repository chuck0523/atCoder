x = gets.split.last.to_i
puts gets.split.map(&:to_i).each_with_index.inject(0){|s, (n, i)| s + n * x.to_s(2).reverse[i].to_i}
