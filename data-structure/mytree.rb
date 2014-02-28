class MyTree < Struct.new("Block",:value,:left,:right)

	def initialize
		@root = Block.new(nil,nil,nil)
	end
	def insert val
		@current_node = @root
		while true do
			if @root.value==nil
				 @root = Block.new(val,nil,nil)  
				 @current_node=@root
			elsif (val<@current_node.value) && (@current_node.left==nil)
				@current_node.left = Block.new(val,nil,nil)
			elsif (val>@current_node.value) && (@current_node.right==nil)
				@current_node.right = Block.new(val,nil,nil)
			elsif (val < @current_node.value)
				@current_node = @current_node.left
			elsif (val > @current_node.value)
				@current_node = @current_node.right
			else
				return
			end
		end
	end

	def search val
		@str = "root"
		@current_node = @root
		while true do
			if val == @current_node.value
				return "#{val} found in tree Search route- "+@str
			elsif (val < @current_node.value) && (@current_node.left == nil)
				return "#{val} not found in tree - search route : "+@str+".left"
			elsif (val > @current_node.value) && (@current_node.right == nil)
				return "#{val} not found in tree - search route : "+@str+".right"
			elsif (val < @current_node.value)
				@str = @str+".left"
				@current_node = @current_node.left
			elsif(val > @current_node.value)
				@str = @str+".right"
				@current_node = @current_node.right
			else
				"unknow exception"
			end
		end		
	end

end

tree = MyTree.new
tree.insert(10)
tree.insert(20)
tree.insert(23)
tree.insert(4)
tree.insert(6)
puts tree.search(6)