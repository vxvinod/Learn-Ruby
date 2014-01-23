class Ordertest

	def initialize()
		@menu={:rice =>2 , :noodles => 5}
	end

	def cost(*orders)

		orders.inject(0) do |tot_cost,order|

			tot_cost + order.keys.inject(0) { |cost,key| cost + (@menu[key]*orders[key])}
		end
		puts tot_cost

	end


end

t=Ordertest.new
t.cost({:rice => 1 ,:noodles => 2},{:rice => 2 ,:noodles => 5})