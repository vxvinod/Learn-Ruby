def hello(&bloc)
	puts " this is inside hello function"
	yield
	yield
end



hello { puts "this is inside block"}