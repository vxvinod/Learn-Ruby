def event(name,&block) 
	@events[name] = block
end

def setup(&block) 
	@setup << block
end

Dir.glob('*events.rb').each do |file|
	@events={}
	@setup=[]
	load file
	@events.each_pair do |name,event|
		env = Object.new
		@setup.each do |setup|
			env.instance_eval &setup
		end
		puts "Alert:#{name}" if env.instance_eval &event
	end
end