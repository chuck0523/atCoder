ary = gets.to_i.times.map{ gets.chomp }
puts ary.max_by {|x| ary.count(x)}
