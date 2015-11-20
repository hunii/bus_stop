require 'net/http'


   source = 'https://aws.amazon.com/ec2/pricing/a0.awsstatic.com/pricing/1/ec2/linux-od.min.js'
   resp = Net::HTTP.get_response(URI.parse(source))
   data = resp.body
   result = JSON.parse(data)



SCHEDULER.every '3s', :first_in => 0 do |job|
  
      send_event('test1', comments: "2")
    
end


# SCHEDULER.every '5m', :first_in => 0 do |job|
#   begin
#     tweets = twitter.search("#{search_term}")

#     if tweets
#       tweets = tweets.map do |tweet|
#         { name: tweet.user.name, body: tweet.text, avatar: tweet.user.profile_image_url_https }
#       end
#       send_event('twitter_mentions', comments: tweets)
#     end
#   rescue Twitter::Error
#     puts "\e[33mFor the twitter widget to work, you need to put in your twitter API keys in the jobs/twitter.rb file.\e[0m"
#   end
# end