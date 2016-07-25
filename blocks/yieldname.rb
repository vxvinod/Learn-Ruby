def name_print()
	name=gets.chomp();
	puts "the value of name is #{name}"
	yield name
	puts "the value of name is #{name}"
end


name_print do |name|
	name=name.upcase
puts "name in block #{name}"
end