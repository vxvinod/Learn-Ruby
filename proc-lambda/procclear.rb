class Test

	def display(king)

	#	yield "don"

		for i in 0..king
	#		yield i
		end

		#yield "finish"


		puts king.call 


	end


	def define
			return Proc.new {|x| puts "kingkhan is #{x}"}
	end

	def contain(val)
		a = define.call(val)
		puts a
	end

end

getme = Test.new
#a=Proc.new{"hello"}
#getme.display(a) 
getme.contain(10)
#{ |x| puts "Number is #{x}" }


