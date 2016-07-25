def return_from_proc
	variable= proc { return "returning from proc inside method"}
	variable.call
	return "returning from proc as last line from method"
end

def return_from_lamda
	variable= -> {return "returning lambda inside the method"}
	variable.call
	return "returning from lamda as last line from method"
end

puts return_from_lamda
puts return_from_proc