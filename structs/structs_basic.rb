Struct.new("Person",:name ,:age) do
	def information
		"hey dude name is #{name} and age is #{age}"
	end
end

p=Struct::Person.new("vinod",23)
puts p.information


Friends=Struct.new(:party,:fun) do
	def info
		"hey dude when s #{party} and fun #{fun}"
	end
end
f=Friends.new("TGFriday","rock")
puts f.info
f.each_pair do |k,v|
	puts "#{k}--#{v}"
end