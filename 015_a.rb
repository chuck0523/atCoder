# a = gets.chomp
# b = gets.chomp
#
# puts a if a.length > b.length
# puts b unless a.length > b.length

# puts [gets, gets].max_by {|x| x.size}
puts [gets, gets].max_by &:size

# http://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-max_by
