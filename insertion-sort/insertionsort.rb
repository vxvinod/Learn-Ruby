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

		for j in 1..$county-1
			puts "#{j}"
			key=$arr[j]
			i=j-1
			puts "#{$arr[i]},#{key}"
			while i>=0 and ($arr[i]>key)  do
				$arr[i+1]=$arr[i]
				i=i-1
			end
			$arr[i+1]=key
			puts "#{$arr[j-1]},#{$arr[j]}"
		end
		puts $arr
	end
end

ins=Insertionsort.new
ins.getinput
ins.sort

