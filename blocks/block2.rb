def hello(&bloc)
	puts "hello i am method hello"
	if block_given?
	bloc.call
	else
	puts "No block is given"
	end
end

hello 