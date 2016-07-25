def sumofcubes(a,b)

 (a..b).inject(0){ |x,y|   x+=(y*y*y)}


end


puts sumofcubes(2,5)