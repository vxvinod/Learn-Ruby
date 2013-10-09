filter =lambda {|array,&block| array.select(&block)}
puts filter.call([1,2,3,4]) {|num| num.even?}