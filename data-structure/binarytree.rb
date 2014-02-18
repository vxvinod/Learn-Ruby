class BinaryTree < Struct.new("MyTree",:value,:left,:right)
	#attr_accessor :value,:left,:right,:root
	def initialize(value)
		@root = MyTree.new(value,nil,nil)
	end

	def insert(val)
		@current_node = @root  
		i = 0
		while @current_node != nil
			
			if(val<@current_node.value) && (@current_node.left == nil)
				@current_node.left = MyTree.new(val,nil,nil) 
				puts "node left null"
				puts i
			elsif(val > @current_node.value) && (@current_node.right == nil)
				@current_node.right = MyTree.new(val,nil,nil)
				puts "node right null"
				puts i
			elsif val < @current_node.value
				@current_node = @current_node.left
				puts "assign left node"
				puts i
			elsif val > @current_node.value
				@current_node = @current_node.right
				puts "assign right node"
				puts i
			else
				return
				puts i
			end
		end
	end

	def test
		#@root.left.value
		@root.right.right.value
	end

end

bin = BinaryTree.new(10)
bin.insert(5)
bin.insert(8)
bin.insert(15)
bin.insert(17)
puts bin.test