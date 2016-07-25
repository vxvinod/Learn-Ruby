class My8inBhk

	def initialize
		@v1 = 99
	end

	private
	def am_i_mad
		@percent =100 
		puts "you are #{@percent} mad"		
		@percent
	end
end

k = My8inBhk.new
k.instance_eval do 	
	puts @v1  #99
	if am_i_mad > 100
		puts "deadly"
	else
		puts "funny"
	end

	def cool
		puts "you are cool"
	end

end
k.cool #you are cool
k.instance_exec(10) do |x|
puts x*@v1 # 990
end
