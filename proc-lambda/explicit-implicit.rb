#explicit to implicit conversion
def add(a,b)
yield(a,b)  #here it is implicit where the block is not defined but it is 
end

addition=lambda{|x,y| x + y}
puts add(2,3,&addition) #explicit conversion where the block is passed 