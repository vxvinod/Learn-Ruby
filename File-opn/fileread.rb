def fileopn
@line=""
	File.open("D:/hello.txt") do |f|

		@line=f.readline
			
	end
	puts @line //prints only one line


	@line=Thread.new do
		File.read("D:/hello.txt")
	end
	puts @line


end

fileopn
