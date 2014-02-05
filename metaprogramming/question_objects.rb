class QuestionObjects

	def initialize(name)
		@name=name
	end

	def king
		@name
	end

	def motivate
		puts "Soldiers roar like lions"
	end

end

obj=QuestionObjects.new("vinod")
puts obj.class
puts obj.motivate
puts obj.class.instance_methods(false)
#puts obj.class.instance_methods(true)
puts obj.instance_variables

