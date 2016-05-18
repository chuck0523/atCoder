puts (0...gets.to_i).to_a.map{gets.to_i}.min

N = gets.to_i
array = []
N.times do |t|
  array << gets.to_i
end
puts array.min
