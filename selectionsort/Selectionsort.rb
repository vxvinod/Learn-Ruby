class Selectionsort

$arr=Array.new

		def getinput
				puts "Enter the element to be sorted"
				$a=gets.chomp()
				while ($a != '/') do
				puts "To end press /"
				$arr.push($a.to_i)
				puts "#{$arr} is added to array"
				$a=gets.chomp()
				end
		end

		def selectionsort
			for i in 0..$arr.length-1
				iMin=i
				for j in i+1..$arr.length-1
					puts "#{$arr[iMin]},#{$arr[j]}"
					if ($arr[iMin]>$arr[j])
						iMin=j 
					end
				end

				if(iMin!=i)
					puts "Before #{$arr[iMin]},#{$arr[i]}"
					key=$arr[iMin]
					$arr[iMin]=$arr[i]
					$arr[i]=key
					puts "after #{$arr[iMin]},#{$arr[i]}"
				end
			end
		end

		def display
			puts $arr
		end


sel=Selectionsort.new
sel.getinput
sel.selectionsort
sel.display
end