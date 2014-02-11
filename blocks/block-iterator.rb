class Sortblock
	def block_iterator
	puts "inside block"
		x=y=10
		1.upto(4).each  do |x,y|
		y=x+1
		yield x,y,1		
		end
	end
end
obj=Sortblock.new
obj.block_iterator { |*x| puts x}