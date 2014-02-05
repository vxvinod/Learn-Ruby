module King
	def name
		"vinod"
	end
	def age
		23
	end
end

module Queen
	def name 
		"katrina kaif"
	end
	def age
		27
	end
end

class Lovers
	include Queen
	include King
	def blast
		puts name
		puts age
	end
end

class Enemy
	include King
	include Queen
	def blast
		puts name
		puts age
	end
end
lov=Lovers.new
lov.blast
puts Lovers.ancestors #=>[Lovers,King,Queen,Object,Kernel,BasicObject]
puts Enemy.ancestors #=>[Lovers,Queen,King,Object,Kernel,BasicObject]
