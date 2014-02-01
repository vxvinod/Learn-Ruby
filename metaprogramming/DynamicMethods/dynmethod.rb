class Dynmethod

	define_method :hello do |x,y|
		"hello #{x} and #{y}"
	end
	def self.call_me
		puts "hello call me"
	end
	call_me
end

dyn=Dynmethod.new
puts dyn.hello("vinod","sabari")