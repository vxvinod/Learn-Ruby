def ret_lambda

lambda{return "i m inside lambda"}.call 
return "i am inside lambda method"   #here in lambda it eventhough return statement is called it never come out of the block

end

puts ret_lambda