class Shortestdistance

@@roads = Hash.new{ |h,k| h[k] = Hash.new() }


		def setpath(from,to,distance)


		@@roads[:A][:to]='B'
		@@roads[:A][:distance]=5

		@@roads[:B][:to]='C'
		@@roads[:B][:distance]=15

		addpath(from,to,distance)
		addpath(to,from,distance)

		return @@roads

		end

		def addpath(from,to,distance)
			@@roads[from]={}
			@@roads[from]<<

		end

		

end

obj=Shortestdistance.new
puts obj.setpath('A','B',20)