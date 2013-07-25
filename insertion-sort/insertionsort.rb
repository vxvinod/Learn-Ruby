class Insertionsort

$arr=Array.new

def getinput

	

	puts "Enter the element to be sorted"
	$a=gets.chomp()
	while ($a != '/') do
	puts "To end press /"
	$arr.push($a)
	puts "#{$arr} is added to array"
	$a=gets.chomp()
	end

end

	def sort
	$county=$arr.length
	for i in 2..$county
	puts "#{i}i am sort"
	end
	end
	
end

ins=Insertionsort.new
ins.getinput
ins.sort
