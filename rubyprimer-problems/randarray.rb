def randarray(array,n)
	result=[]
n.times do
  result << array[rand(array.length)]
end
result

end


puts randarray([1,2,3,4],2)