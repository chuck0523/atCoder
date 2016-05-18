puts gets.split.map(&:to_i).reverse.reduce{|result, x| result / x}
