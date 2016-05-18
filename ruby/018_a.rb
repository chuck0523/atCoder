nums = [gets.to_i, gets.to_i, gets.to_i]
sorted_nums = nums.sort.reverse

for i in 0..2 do
  puts sorted_nums.index(nums[i]) + 1
end
