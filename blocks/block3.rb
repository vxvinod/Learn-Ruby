def hello(&bloc)
puts " iam method"
name=bloc.call
puts "my name is #{name}"
end

hello do
puts " i am block" 
"vinod"
end