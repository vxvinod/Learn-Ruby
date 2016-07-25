class Heaven

	private
	def happy
		"i am happy"
	end

end
h,g = Heaven.new
h.instance_eval do
	puts happy # i am happy
	def sad
		"i am sad"
	end
end

puts h.sad #i am sad
puts g.sad # undefined methiod sad