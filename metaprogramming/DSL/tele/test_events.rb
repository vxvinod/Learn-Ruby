
event "customer does not have money" do
	@cust_money < @amount_to_be_paid && @date >2000
end

event "Customer has money but he is not paying !!!:(" do
	@cust_money > @amount_to_be_paid && @date >2000
end

setup do
	puts "setting due date"
	@date = 2302 
end

setup do
	puts "setting up due"
	@amount_to_be_paid = 1200
end

setup do
	puts "customer have money"
	@cust_money = 1000
end