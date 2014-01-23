require 'forwardable'
class A
	extend Forwardable
	def initialize
		@arr=[]
	end
	def_delegator :@arr,:push,:enq # syntax def_delegator(accessor,method,alias=method) --alias any name
	def_delegator :@arr,:shift,:deq
	def_delegators :@arr,:clear,:size,:shift #defining mulitple methods in delegators
	def_delegators[:<<,:map]=>@arr
	
end

a=A.new
a.enq 5,6,7
puts a.deq
puts a.size
puts a.shift
puts a.<< 9