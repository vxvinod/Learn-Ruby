def file_open

	afile=File.open("file.txt","a+")
	if afile
		afile.syswrite("WORLD")
		#afile.each_byte{|x| putc x}
	else
		puts "unable to open file"

	end


end

def fileIO_open

#	File.rename("hello.txt","file.txt")
	a=File.size?("file.txt")
	puts a
	arr=IO.readlines("file.txt")
	puts arr[0]
	puts arr[1]
	puts arr[2]
	puts arr

end


def fiele

fileIO_open