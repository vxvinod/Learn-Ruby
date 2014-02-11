class DataSource  #DataSource where it stores the information about resources and project of every domain

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
	end

	def method_missing(name)
		super if !@ds.respond_to?("get_#{name}_resource")
		resource=@ds.send "get_#{name}_resource",@id  
		projects=@ds.send "get_#{name}_projects",@id
		conclusion="#{name.to_s.upcase!}:#{resource} resources and #{projects}"
		return "enough #{conclusion}" if resource.to_i >30
		conclusion
	end
	
end
d=RefDomain.new(2,DataSource.new)
puts d.ruby # > RUBY:23 resources and Clear trip,Twitter,Github
puts d.java # > enough JAVA:50 resources and flipkart,google+
puts d.php # > enough PHP:43 resources and facebook,orkut
puts d.net # > no Method error


 
