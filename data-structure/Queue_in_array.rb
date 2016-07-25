class QueueInArray
	
	def initialize
		@queue = [] #initializing array queue
		@rear = 0 #rear pointer for dequeue
		@front = -1 # front pointer used for enqueue
	end

	def enqueue(value)
		@queue[@front +=1] = value  #incrementing front while adding data
	end

	def dequeue
		raise "queue is empty" if @front == -1 || @rear > @front
		@curr_front = @rear
		@rear +=1  #incrementing rear while dequeue
		@queue[@curr_front]
	end

	def size
		@front-@rear+1 
	end

	def empty?
		return true if @rear > @front 
		false
	end

end

q = QueueInArray.new
puts q.empty? # => true
puts q.enqueue(3) # => enqueue 3
puts q.empty? # => false
puts q.enqueue(9) # => enqueue 9
puts q.enqueue(8) # => enqueue 8
puts q.enqueue(7) # => enqueue 7
puts q.size # => 4
puts q.dequeue # => dequeue 3
puts q.empty? # => false
puts q.dequeue # => dequeue 9
puts q.dequeue # => dequeue 8
puts q.empty? # => false
puts q.dequeue # =>  dequeue 7
puts q.empty? # => true
puts q.size # => 0
