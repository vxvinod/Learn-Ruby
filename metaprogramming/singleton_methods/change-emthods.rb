class Myclass

		def firstname fname
			puts fname
		end

		def lastname lname
			puts lname
		end

		def goal gl
			puts gl
		end

		def self.ascoate old_name
			puts "#{old_name}"
		end
		def self.deprecate(old_method,new_method)
			define_method(old_method) do |*args,&block|
				warn "Warning #{old_method} is deprecated use #{new_method}"
				send(new_method,*args,&block)
			end
		end	
		deprecate :name,:firstname
		ascoate :name


end

cl = Myclass.new
cl.name "vinod"