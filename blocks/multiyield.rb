def number_print(&block)

	i=0
	while i<10
	yield i
	i=i+1
	end

end

number_print do |num|

	puts "the value of num is #{num}"
	num=num*2
	puts "the value of multiplied num is #{num}"
end
