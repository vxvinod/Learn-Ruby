def proc_to_object(a,b,&my_proc)
puts "converting procs to object"
my_proc.call(a,b)
end

puts proc_to_object(2,3){|a,b| a*b}

def object_to_proc(a,b)
	puts "converting object to procs"
	yield(a,b)
end

our_proc = Proc.new{|a,b| a*b }
puts object_to_proc(2,3,&our_proc)

def return_lambda(lamb)
	puts "checking lambda return"
	lamb.call * 2
end

lam = lambda {return 20} # return from lambda
puts return_lambda(lam) # this is executed


def return_proc(retproc)
	puts "checking proc return"
	retproc.call * 2
end

pro = Proc.new{ return 20} #returns from top level s
puts return_proc(pro)  #unreachable code


def arg_lambda(lamb)
	puts "checking lambda return"
	lamb.call(1,2) * 2
end

lam = lambda {|a| a} # return from lambda
puts arg_lambda(lam) # throws wrong arguments exception


def arg_proc(retproc)
	puts "checking proc return"
	retproc.call(1,2) * 2
end

pro = Proc.new{ |a| a} #returns from top level scope
puts arg_proc(pro)  #executes by taking i alone
