class Calculate

	def add(a,b)
		
		return a+b;
	
	end
	
	
end


add_obj=Calculate.new.method("add")
add_proc=add_obj.to_proc
puts add_proc.call(3,4)
puts add_proc.call(6,66666555555555555555555555555555555555555555555555555555555555555555555555555555555555555*55555555555999999999999999999999999999)
puts add_proc.call(1.2,1.1)