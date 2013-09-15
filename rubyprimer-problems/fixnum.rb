def arrayfixnum(array)

	array.all? { |x| x.is_a? Fixnum}

end

puts arrayfixnum([1,2,3,3,"vinod",4,5])