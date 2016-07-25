class MyStruct
	def initialize
		@my_hash={}
	end
	def method_missing(name,*args)
		new_key = name.to_s
		if new_key =~ /=$/
		@my_hash[new_key.chop] = args[0]
		else
			@my_hash[new_key]
		end
	end
end
vcet=MyStruct.new
vcet.nick = "vinod"
puts vcet.nick
vcet.age = 23
puts vcet.age
