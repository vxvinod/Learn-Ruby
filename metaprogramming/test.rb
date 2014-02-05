class Test
	def old_method (array,from,to)
		array.each_with_index do |x,y|
			array[y] = to if x == from
		end
	end

	private
	def private_method
		"this s private method"
	end
end

class Sample < Test
	def call_private_test
		private_method
	end
end

class Array
	def element_replace(from,to)
		self.each_with_index do |x,y|
			self[y]=to if x==from
		end
	end
end
t=Test.new()
#puts t.old_method([2,1,4,3],2,5)
puts [2,1,3,4].element_replace(2,5)
s=Sample.new
puts s.call_private_test