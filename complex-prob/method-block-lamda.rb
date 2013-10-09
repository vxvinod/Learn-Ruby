king=lambda do |array,&block|

array.map(&block)
end

puts king.call([1,2,3,4]) {|k| k.even?}