#implicit block to explicit block
def add(a,b,&bulk) #explicit block which is named and used inside by calling 

bulk.call(a,b)

end

puts add(2,4) {|x,y| x + y } #implicit block which is nameless and it is not passed as a explicit  parameter

#hence nameless blocks are called ---implicit block
#named blocks are called explicit blocks