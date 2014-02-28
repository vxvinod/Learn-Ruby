class BinaryTree < Struct.new("MyTree",:value,:left,:right)
	#attr_accessor :value,:left,:right,:root
	def initialize(value)
		@root = MyTree.new(value,nil,nil)
		@k= 0
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

	 def preOrderTraversal(node= @root)
        return if (node == nil)
        puts node.value.to_s
        puts "k value before left #{@k}"
        @k=@k+1
        preOrderTraversal(node.left)
        puts "k value before right #{@k}"
        @k=@k+2
        preOrderTraversal(node.right)
        puts "k value after right #{@k}"
        @k=@k+3
    	
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
bin.preOrderTraversal
#puts bin.test