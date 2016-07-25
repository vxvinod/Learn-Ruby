class Myclass

	@str = "hello i am mark"
	def @str.check
		self.upcase ==  self
	end

	def self.end
		puts "hello"
	end
	puts Myclass.singleton_methods #->end
	puts @str.singleton_methods #->check
	puts self.singleton_methods #->end
end

cl = Myclass.new
Myclass.end #=> hello