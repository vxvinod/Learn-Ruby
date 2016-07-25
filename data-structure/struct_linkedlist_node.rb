class Linkedlist < Struct.new("Node",:value,:ref)
	#attr_accessor :head,:tail,:count

	def initialize
		@head = nil
		@tail =nil
		@count = 0
	end

	def insert_at_front(value)
		node = Node.new(value)
		if @head == nil
			@head = node
			@tail = node
		else
			# if @head == nil
			node.ref = @head
			@head = node
		end
		@count +=1
	end

	def first
		@head.value
	end

	def last
		@tail.value
	end

	def is_there_in_list(value)
		@exist = @head
		until @exist.nil?
			if @exist.value == value 
				puts "inside if"
				return "#{value} is present in list"
			else
				puts "inside else"
				@exist = @exist.ref
			end
		end
		"#{value} is not present in list"
	end
end



link = Linkedlist.new
link.insert_at_front(2)
link.insert_at_front(3)
link.insert_at_front(5)
puts "first value of the linked list is"+" #{link.first}"
puts "last value of the linked list is"+" #{link.last}"
puts link.is_there_in_list(3)
puts link.is_there_in_list(7)

# Output
# first value of the linked list is 5
# last value of the linked list is 2
# inside else
# inside if
# 3 is present in list
# 7 is not present in list
