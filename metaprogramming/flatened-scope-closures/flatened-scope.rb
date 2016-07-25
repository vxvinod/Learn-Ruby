var ="hello i am outside the class"

King = Class.new do
	puts var

	define_method :war do
		puts var
	end

end

obj = King.new
obj.war


we can access the variable outside the class by making the class as method and accessing var by closure 
and same case for method this trick is called as nested lexical scopes 