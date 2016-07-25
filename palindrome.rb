class Palindrome
	def three_digit
		greatestPali = {:a => nil, :b =>nil, :prod =>nil}
		threeDigit = Array(111..999).reverse
		threeDigit.each do |i|
			threeDigit.each do |j|
				product = (i*j).to_s
				if (product.eql? product.reverse)
					if (product.to_i > greatestPali[:prod].to_i)
						greatestPali = {:prod => product.to_i, :a => i, :b => j } 
					end  
				end
			end
		end
	return greatestPali
	end
end

pali = Palindrome.new
puts pali.three_digit