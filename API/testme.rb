require 'rubygems'
require 'oauth'
require 'json'
require 'yaml'

#get api key and api secret key
puts "Welcome to Tweet from ruby code....:):):)"
puts "enter consumer api key.."
consumer_api_key = gets.chomp
#consumer_api_key = "dt3IDYtpiyj0FhcGjXjkkg"
puts "enter consumer api secret key.."
consumer_api_secret_key = gets.chomp
#consumer_api_secret_key = "vkeuYgZJc1X9wyFENJ4PnkrDz62MCP331iAsV4SIyrE"
puts "enter access token key.."
access_token_key = gets.chomp
#access_token_key = "1684808822-cGuMIjScxtk7Ot99Odd97q832nKZBAhUIF7Izsa"
puts "enter access token secret key.."
access_token_secret_key = gets.chomp
#access_token_secret_key = "xcWPDHDRxE8ijDGrLQf1lMnNRRExmEwhpiQCOaQFTFIFo"


#get access token and access secret key

consumer_key = OAuth::Consumer.new consumer_api_key,consumer_api_secret_key
access_token = OAuth::Token.new access_token_key,access_token_secret_key

#form the URI

baseurl = "https://api.twitter.com/"
path = "1.1/statuses/user_timeline.json"
query = URI.encode_www_form(
	"screen_name" => "vinodkmrmurugan",
	"count" => 10,
	)
address = URI("#{baseurl}#{path}?#{query}")


#initialise HTTP require 
http = Net::HTTP.new address.host,address.port
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER
request = Net::HTTP::Get.new address.request_uri

puts "uri requested" + address.request_uri


#issue the request 

request.oauth! http,consumer_key,access_token
http.start
response = http.request request

puts "code "+response.code

puts "response "+response.to_yaml
# get the response and print it.

tweet = nil

if response.code=='200' then
	tweets=JSON.parse(response.body)
	tweets.each do |tweet|
		puts tweet["text"]
	end
	puts "retreived successfully"

else
	puts "not successfilly retrieved"


end