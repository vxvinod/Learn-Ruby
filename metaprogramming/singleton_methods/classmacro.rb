module Formatter

	def format_the_string str 
		"**#{str}**"
	end
end

 class MyClass
 	include Formatter
 	cloc =Proc.new{}
 	def self.hibernate(method_name,&bloc)
 		define_method (method_name) do
 			["a","b"].map{|str| instance_exec(str,&bloc)}
 		end

 	end
hibernate(:cally) {|str| format_the_string(str) } 
 end

 mc = MyClass.new
 pro = Proc.new{|str| format_the_string(str)}
 puts mc.cally