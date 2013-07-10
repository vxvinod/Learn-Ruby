def hello(&bloc)
	puts "hello i am method hello"
	bloc.call
end

hello { puts "hi i am block" }

