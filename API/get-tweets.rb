require 'rubygems'
require 'oauth'
require 'json'
require 'yaml'

# You will need to set your application type to
# read/write on dev.twitter.com and regenerate your access
# token.  Enter the new values here:
consumer_key = OAuth::Consumer.new(
  "dt3IDYtpiyj0FhcGjXjkkg",
  "vkeuYgZJc1X9wyFENJ4PnkrDz62MCP331iAsV4SIyrE")
access_token = OAuth::Token.new(
  "1684808822-cGuMIjScxtk7Ot99Odd97q832nKZBAhUIF7Izsa",
  "xcWPDHDRxE8ijDGrLQf1lMnNRRExmEwhpiQCOaQFTFIFo")

# Note that the type of request has changed to POST.
# The request parameters have also moved to the body
# of the request instead of being put in the URL.
baseurl = "https://api.twitter.com"
path    = "/1.1/statuses/user_timeline.json"
query   = URI.encode_www_form(
    "screen_name" => "theRealKiyosaki",
    "count" => 10,
)
address = URI("#{baseurl}#{path}?#{query}")


puts address
puts "request uri  "+address.request_uri


# Set up HTTP.
http             = Net::HTTP.new address.host, address.port
http.use_ssl     = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER
request = Net::HTTP::Get.new address.request_uri

# Issue the request.
request.oauth! http, consumer_key, access_token
http.start
response = http.request request

# Parse and print the Tweet if the response code was 200
tweet = nil
if response.code == '200' then
  tweets = JSON.parse(response.body)
  #puts tweets.to_yaml
  tweets.each do |tweet|
  	puts tweet["text"]
  end
  puts "Successfully tweets fetched"
else
  puts "Could not send the Tweet! " +
  "Code:#{response.code} Body:#{response.body}"
end
