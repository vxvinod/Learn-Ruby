
event "YOU IN HEAVEN" do
	@me < @heaven
end

event "YOU IN HELL" do
	@me < @hell 
end

setup do
	puts "setting up heaven"
	@heaven = 1000
end

setup do
	puts "setting up hell"
	@hell = 1200
end

setup do
	puts "setting me"
	@me = 1100
end