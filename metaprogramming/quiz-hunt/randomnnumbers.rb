class RandomNumGen

	def method_missing(name,*args)

		person =name.to_s.capitalize
		puts person
		super unless %[Vinod,Sabari,Balaji].include? person
		number =0
		4.times do
			number = rand(10) + 1
			puts number
		end
		puts "#{person} got #{number}"
	end
end

ran=RandomNumGen.new
ran.vinod