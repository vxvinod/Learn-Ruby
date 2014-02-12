class BlankSlate

	def hide(name,*args)
		if instance_methods.include? (name.to_s) and name.to_s != /method_missing|instance_eval|__/
			@hidden_methods || = {}
			#puts instance_method(name)
			@hidden_methods[name.to_sym] = instance_method(name)
			puts @hidden_methods
		end


	end

end

b=BlankSlate.new
b.hide("length",1,2)