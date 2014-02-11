def polar(x,y)

	r=Math.atan2(x,y)
	theta=Math.hypot(x,y)
	[r,theta]



end

@distance,@angle=polar(2,2)
puts @distance
puts @angle