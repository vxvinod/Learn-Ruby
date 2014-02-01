class DataSource

 def get_ruby_resource(location_id)
 	"23"
 end

 def get_ruby_projects(location_id)
 	"Clear trip,Twitter,Github"
 end
 
 def get_java_resource(location_id)
 	"50"
 end

 def get_java_projects(location_id)
 	"flipkart,google+"
 end

 def get_php_resource(location_id)
 	"43"
 end

 def get_php_projects(location_id)
 	"facebook,orkut"
 end

end

class RefDomain

	
	def initialize(location_id,data_source)
		@id=location_id
		@ds=data_source
		@ds.methods.grep(/^get_(.*)_projects$/){ RefDomain.define_component $1 }
	end

	def self.define_component(name)
		puts name
		puts @id
		@ds.methods.grep(/^get_(.*)_projects$/){puts $1}
		puts "inside self"
		define_method (name){
		resource=@ds.send "get_#{name}_resource",@id
		projects=@ds.send "get_#{name}_projects",@id
		#resource=@ds.send get_php_resource,@id
		#projects=@ds.get_php_projects(@id)
		puts resource
		puts "res"
		conclusion="#{name.to_s.upcase!}:#{resources} resources and #{projects}"
		#return "enough #{conclusion}" if resource >30
		 puts conclusion
	}
	end
	#define_domain :php
end
d=RefDomain.new(2,DataSource.new)



