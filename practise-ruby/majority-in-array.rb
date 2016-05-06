nums = [1, 2, 1, 4, 5, 5, 2, 3]
puts nums.max_by {|x| nums.count(x)}

max_size = nums.count(nums.max_by {|x| nums.count(x)})
puts nums.map { |x| x if nums.count(x) == max_size}.uniq
