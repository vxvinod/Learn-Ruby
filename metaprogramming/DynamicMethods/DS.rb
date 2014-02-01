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

#ds=DataSource.new
#ds.get_php_projects(2)
#ds.get_java_projects(2)
#puts ds.get_ruby_projects(2)

class Domain

	def initialize(location_id,data_source)
		@id=location_id
		@ds=data_source
	end

	def java
		resource=@ds.get_java_resource(@id).to_i
		projects=@ds.get_java_projects(@id)
		conclusion="Java: #{resource} resource ,#{projects} projects"
		return "enough #{conclusion}" if resource >= 30
		conclusion
	end

	def ruby
		resource=@ds.get_ruby_resource(@id).to_i
		projects=@ds.get_ruby_projects(@id)
		conclusion="Ruby: #{resource} resource ,#{projects} projects"
		return "enough #{conclusion}" if resource >= 30
		conclusion
	end


	def php
		resource=@ds.get_php_resource(@id).to_i
		projects=@ds.get_php_projects(@id)
		conclusion="Php: #{resource} resource ,#{projects} projects"
		return "enough #{conclusion}" if resource >= 30
		conclusion
	end
end
#ds=DataSource.new
#d=Domain.new(2,DataSource.new)
#puts d.ruby


#here we feel wiritng same code for all three methods where repetive copy paste of code is seen
#to solve this duplication bill says there are two ways Dynamic methods and missing_methods

#In order to refactor it first we will implement Dynamic methods


#refactoring

class RefDomain

	
	def initialize(location_id,data_source)
		@id=location_id
		@ds=data_source
		@ds.methods.grep(/^get_(.*)_projects$/){ RefDomain.define_domain $1 }
	end

	def self.define_domain(name)
		puts name
		puts @id
		@ds.methods.grep(/^get_(.*)_projects$/){puts $1}
		puts "inside self"
		define_method(name){
		resource=@ds.send "get_#{name}_resource,@id"
		projects=@ds.send "get_#{name}_projects,@id"
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



