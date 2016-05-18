n = gets.to_i
visited = {}
bloomed = 0
n.times do |t|
  f = gets.to_i
  if visited[f]
    bloomed += 1
  else
    visited[f] = 1
  end
end

puts bloomed
