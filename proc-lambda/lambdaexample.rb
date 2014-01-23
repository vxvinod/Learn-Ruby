def test_parameter_handling(code)
  code.call(1,2)
end
 
l = lambda {|a,b,c| puts "#{a} is a #{a.class}, #{b} is a #{b.class}, #{c} is a #{c.class}" }
p = Proc.new {|a,b,c| puts "#{a} is a #{a.class}, #{b} is a #{b.class}, #{c} is a #{c.class}" }
 
test_parameter_handling (p)
test_parameter_handling (l)