class Short_the_tweet

	@@input=''
	@@output=''

	def read_input
        iFile=IO.readlines('input_tweets.txt','r+')
		iFile.each do |x|
 			@@input+=x
		end
        @@input=@@input.split(" ")
	end

	def shorten_tweets
		aFile=IO.readlines("short-tweets.txt")
        i=0
		@@input.each do |x|
            aFile.each do |y|
           	   short=y.split(' ')
               if ((x<=>short[0]) == 0)
               	puts short[1]
               	@@output=@@output+" "+short[1]
               end
               i+=1
            end
		end
	end


	def output_filecmd

		bFile=File.new('output_tweet.txt','w+')
        bFile.syswrite(@@output)
        bFile.close


	end

end

obj=Short_the_tweet.new
obj.read_input
obj.shorten_tweets
obj.output_filecmd

