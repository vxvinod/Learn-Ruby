def non_duplicated_values(values)
  single=[]
  values.each do |x|
    
    single << x if values.count(x)==1
    
  end

  return single

end


puts non_duplicated_values([1,2,2,3])