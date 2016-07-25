class StackByArray

	def initialize(size)
		@stack = []
		@size = size
		@count = -1
	end

	def push(value)
		return @stack[@count +=1] = value if @count != @size - 1  #since count is initialized -1 we check with size -1
		raise "stack is full" 
	end

	def pop
		raise "stack is empty" if @count == -1 
		@last_pop = @count
		@count -=1
		@stack[@last_pop]
	end

	def size
		@current_stack_size = @count + 1  # assigning to new variable because @count should not get affected
	end

	def look_up
		@stack[@count]
	end

	def empty?
		return true if @count.eql? 0
		false
	end

	def full?
		return true if @count.eql? @size
		false
	end
end

obj = StackByArray.new(4)

puts "push #{obj.push(2)}" #=> push 2
puts "push #{obj.push(4)}" #=> push 4
puts "push #{obj.push(5)}" #=> push 5
puts "push #{obj.push(6)}" #=> push 6
puts "pop #{obj.pop}"      #=> pop 6
puts "stack size is #{obj.size}" #=>stack size is 3
puts "top stack value is #{obj.look_up}" #=> top stack value is 5
puts obj.empty? #=> false
puts obj.full? #=>false

