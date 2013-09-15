class Bubblesort

	$arr=Array.new

	def getinput
		puts "Enter the data to be sorted "
		a=gets.chomp()
		while (a!='/')
			$arr.push(a.to_i)
			puts "#{$arr} is added to array  \n press / to end"
			a=gets.chomp()

		end
	end

	def bubblesort
		for i in 1..$arr.length-1
			for j in 1..$arr.length-1
				if ($arr[j-1]>$arr[j])
					key=$arr[j]
					$arr[j]=$arr[j-1]
					$arr[j-1]=key
				end
			end
		end


	end

	def display
		puts $arr

	end


bubs=Bubblesort.new
bubs.getinput
bubs.bubblesort
bubs.display
end
