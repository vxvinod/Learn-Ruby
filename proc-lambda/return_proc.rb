def ret_proc

Proc.new{return "i m inside proc"}.call #here when return statement is present inside the proc it comes out of the block immediately
return " i m inside proc method"


end

puts ret_proc


#Choices, choices

#Let’s summarize all the different ways in which blocks can be created in Ruby that we have learned thus far.

#Implicitly when invoking a method
#Explicitly using the Kernel#lambda factory method
#Explicitly using Proc.new