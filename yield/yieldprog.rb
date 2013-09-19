class Test

	def display(a)

		yield "don"

		for i in 0..a
			yield i
		end

		yield "finish"


	#	puts proc.call "bug"


	end



end

getme = Test.new
#proc=Proc.new{"hello"}
getme.display(10) { |x| puts "Number is #{x}" }

