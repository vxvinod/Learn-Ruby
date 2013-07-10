def header(&bloc)

puts "my name is method"
bloc.call
rescue
puts "error is rescued"
ensure 
puts " i am ensure"
end

header do
puts "i am block"
raise "i am error"
end