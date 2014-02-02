require 'ruport'

class Hunter
	def method_missing(method_name,*args,&block)
 	  puts "method name #{method_name} is called with arguments (#{args.join(',')})"
 	  block.call if block_given?
	end

	def table_to_text
	  data=Ruport::Data::Table.new :column_name => ["name","age"],
	  						   :data => [["vinod",23],
	  									  ["ragavan",24],
	  									  ["ashok",25]]
	  puts data.to_text

	  tab=data.rows_with_name("ragavan")
	  tab.each do |x|
	  	puts x.to_csv
	  end
	end
end

hunt=Hunter.new
hunt.vinod 82,180 do |x,y|
puts "this is block"
end
hunt.table_to_text