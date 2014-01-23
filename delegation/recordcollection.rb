require 'forwardable'

class RecordCollection
	attr_accessor :records
	extend Forwardable
	def_delegator :@records, :[], :record_number
end

class RecordCollection
	def_delegators :@records,:[],:size,:<<,:map
end
r=RecordCollection.new
r.records = [4,5,6]
puts r.record_number(2)
puts r.size
r.map {|x| puts x}

