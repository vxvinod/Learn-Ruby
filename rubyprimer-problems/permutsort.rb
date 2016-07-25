def permutsort(num)

	no_of_combinations = num..to_s.size==3 ? 6:24
	# puts no_of_combinations
	digits=num.to_s.split("")
	puts digits[0]
	combination=[]
	combination <<  digits.shuffle.join.to_i while combination.uniq.size!=no_of_combinations
	puts combination.uniq.sort 

	


end

permutsort(213)
