class Myclass

	@str = "hello i am mark"
	def @str.check
		self.upcase ==  self
	end

	def self.end
		puts "hello"
	end
	puts self.singleton_methods
	puts @str.singleton_methods
end

cl = Myclass.new
Myclass.end