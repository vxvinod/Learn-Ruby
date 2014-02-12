require 'delegate'
class Canbay
	
	def initialize(name)
		@name=name
	end

	def morgan_stanley
		puts "Hi #{@name} this is Morgan Stanley Project"
	end

	def jp_morgan
		puts "Hi #{@name} this is JP Morgan Project"
	end

end

class Capgemini < DelegateClass(Canbay) 

	def initialize(supername)
		super(supername)     # assisgking Canbay class as a super class for Capgemini class.
	end

	def rmg
		puts "Hi #{@name} this is Royal Mail Group Project"
	end
end

cl = Canbay.new("vinod")
client=Capgemini.new(cl)
client.rmg #=>Hi  this is Royal Mail Group Project
client.jp_morgan #=>Hi vinod this is JP Morgan Project
client.morgan_stanley #=>Hi vinod this is morgan stanely Project


