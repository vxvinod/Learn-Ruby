require 'rest-client'

puts "Enter whether you want to search google or ping herokuapp"
puts "1. Google /n 2. Heroku"
input = gets.chomp.downcase

case input

	when 'google'
		puts 'its google Enter the search term to search'
		search = gets.chomp.downcase
		response = RestClient.get "http://www.google.co.in/#q=" << "#{search}"
		puts response.to_s
		puts 'this is the source code'
	when 'heroku'
		puts 'its heroku enter the app name to open it'
		app_name = gets.chomp
		response = RestClient.get '.herokuapp.com'.prepend("#{app_name}")
		puts response.to_s
		puts 'this s source code'
end