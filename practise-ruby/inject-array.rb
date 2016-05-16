array = [1, 2, 3]
puts [1, 1, 1].inject(array) {|sum_array, a| sum_array << a}
# [1, 1, 1, 1, 2, 3]
