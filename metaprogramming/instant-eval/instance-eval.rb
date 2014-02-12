class Capgemini
	private
	def java
		@v = 1
		"java"
	end

	def sap
		@v=2
		"SAP"
	end

	def dontnet
		"dontnet"
	end
end

cap = Capgemini.new
cap.instance_eval do
	puts java
	puts sap
	puts @v
end