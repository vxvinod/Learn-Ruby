class BinaryTree < Struct.new("MyTree",:value,:left,:right)
	#attr_accessor :value,:left,:right,:root
	def initialize(value)
		@root = MyTree.new(value,nil,nil)
		@k= 0
	end
	
	def insert(val,node= @root)
		@node =node
		if nil == @node
			@node = MyTree.new(val,nil,nil) 
			return @node
		end
		if (@node.value > val)
			@node.left = insert(val,node.left)  
		else
			@node.right = insert(val,node.right) if (@node.value < val)
		end
		return @node
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
		@node.value
	end

end

bin = BinaryTree.new(10)
bin.insert(5)
bin.insert(8)
bin.insert(15)
bin.insert(17)
#bin.preOrderTraversal
puts bin.test