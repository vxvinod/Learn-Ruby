class ExpBlankState
		instance_methods.each do |method_name|
			undef_method(method_name) unless method_name =~ /^__|^(public_methods|method_missing|respond_to\?)$/
		end
end
puts ExpBlankState.new.public_methods

