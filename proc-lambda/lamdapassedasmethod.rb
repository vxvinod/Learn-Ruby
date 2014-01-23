#class Lambdaparam

	def lambdapass(a , b , operation)

		operation.call( a, b)


	end	
	 puts lambdapass(2 , 3, lambda { |a,b| return a + b } )


#end