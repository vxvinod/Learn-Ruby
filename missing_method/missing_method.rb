class A
 # attr_accessor :name
	def name
		"vinod"
	end

	def display
		name
	end

	def method_missing method, *args, &block
	    if method.to_s.include? "name"
		puts name
	    else
		super method,*args,&block
	    end
	end
end

obj=A.new.myename # this will be handled in missing method
obj1=A.new.mye #this will be handled be super missing_method 

