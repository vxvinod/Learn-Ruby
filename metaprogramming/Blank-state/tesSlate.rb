class BlankSlate

	def hide(name,*args)
		if instance_methods.include? (name.to_s) and name.to_s != /method_missing|instance_eval|__/
		undef_method 	name
		end
	end

	instance_method.each do |m|
	 hide(m)
	end

end

b=BlankSlate.new
b.hide("length",1,2)