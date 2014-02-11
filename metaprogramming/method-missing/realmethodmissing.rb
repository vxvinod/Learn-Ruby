class Hollywood
	@@i=0
	def praise(nam,*args,&block)
		define_method (nam) {
		#puts name,args[0]
		puts "i am define"
	}
	end

	def method_missing(name,*args,&block)
		#puts @@i
		puts name
		@@i+=1
		return praise($1.to_sym,*args) if name.to_s =~ /king_o_(.*)/
		puts $1
		puts name.to_s =~ /king_o_(.*)/
		puts "what the hell man"
	end
end

h = Hollywood.new
h.king_o_vinod(82,180) do
	puts "i am blcok"
end
#h.vinod