str = 'hello'
puts str.delete 'h' # ello
puts str.delete 'l' # heo
puts str.delete 'f-z'  # e ←範囲指定
puts str.delete '^e' # e以外
