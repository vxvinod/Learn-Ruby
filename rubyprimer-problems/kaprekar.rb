def kaprekarnum(num)

	num_size=num.to_s.size

	sq_size=(num**2).to_s

	second_size=sq_size[-num_size..-1]
	first_size= num_size.even? ? sq_size[0..num_size-1] : sq_size[0..num_size-2]

	num==first_size.to_i + second_size.to_i


end


puts kaprekarnum(297);