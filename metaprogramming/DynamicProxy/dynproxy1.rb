class Capgemini

	def java
		puts "Welcome to Java"
	end

	def ruby
		puts "you are fortunate to study Ruby"
	end

	def php
		puts "welcome to php"
	end

	def test
		puts [1,2,3].size
	end
end


class DynProxy 
	def initialize(object)
		@object=object
	end
	def method_missing(name,*args)
		puts "inside Ghost"
		puts @object.send(name,*args)
	end

end

dyn=DynProxy.new([1,2,3])
dyn1=DynProxy.new(Capgemini.new)
dyn.size # 3
dyn.reverse #3 2 1
dyn1.java # Welcome to Java"


	

