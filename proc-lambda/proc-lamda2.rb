class Paper

	def initialize (&block)
		yield self if block_given?
	end

	def set_variable 
		return Proc.new do |kind,val|
			[kind,val].join(": ")
		end
	end

	def title(value)
		@title=set_variable.call "Title",value
	end

	def body(value)
		@body=set_variable.call "body",value
	end

	def content(value)
		@content=set_variable.call "Content",value
	end

	def display
		puts @title
		puts "--------------"
		puts @body
		puts "--------------"
		puts @content
		puts "----------------"
	end

end
	paper=Paper.new do |p|
	p.title "helllo"
	p.body "i am body"
	p.content "i am content"
	end

	paper.display

