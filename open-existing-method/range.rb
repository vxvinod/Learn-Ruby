class Range

	def by(step)
		x=self.begin
		puts exclude_end?
		puts self.end
		if exclude_end?
			puts "inside exclude"
			while x < self.end
			yield x
			x += step
			end
		else
			puts "outside exclude"
			while x <= self.end
		    yield x
			x += step
			end
		end
	end


end

(2..10).by(2) {|x| print x}
(2...10).by(2) {|x| print x}
