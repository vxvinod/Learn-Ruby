class MyClass
	def size
		24
	end
end

mc,hc=MyClass.new

def hc.size
	50
end

puts mc.size # 23
puts hc.size # 50

