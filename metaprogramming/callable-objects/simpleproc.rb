def multiple_money(x,y,&block)
	puts "calling dollars"
	dollars(x,y,&block)
	yield(x,y)
end

def dollars(a,b)
	puts yield(a,b)
end

multiple_money(2,4) {|a,b| a*b}