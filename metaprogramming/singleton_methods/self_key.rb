class Myclass
	attr_accessor :title

	class << self
		def author
			"paul"
		end
	end 

	def set_author
		"#{@title} by #{self.class.author}"  #while calling a self method you should call using self.class
	end
end

mc =  Myclass.new
mc.title = "Metaprogramming"
puts mc.set_author
