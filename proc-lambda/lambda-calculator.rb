class Calculator

	def add(a,b)
		return a + b
	end


end

add_obj=Calculator.new.method("add")
addition=add_obj.to_proc
puts addition.call(5,6)

subraction= lambda{|a,b| return a-b }
multiplication=lambda{|a,b| return a*b }
division=lambda{|a,b| return a/b }
puts subraction.call(6,3)
puts multiplication.call(6,5)
puts division.call(6,4)