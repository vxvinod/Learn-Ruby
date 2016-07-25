def filter(array,block)

	array.select(&block)

end

puts filter([1,2,3,4],lambda{|num| num.even?})