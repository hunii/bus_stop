require 'json'


# data = "[{\"firstName\":\"John\", \"lastName\":\"Doe\"},{\"firstName\":\"Anna\", \"lastName\":\"Smith\"},{\"firstName\":\"Peter\",\"lastName\": \"Jones\"}
# \]"


# jjson = JSON.parse(data)

# data1 = "james"


#     if tweets
#       tweets = tweets.map do |tweet|
#         { name: tweet.user.name, body: tweet.text, avatar: tweet.user.profile_image_url_https }
#       end
#       send_event('twitter_mentions', comments: tweets)


# jjson.map do |son|
# 	son = {
# 		:firstName =>
# 	}

current_valuation = 0
current_karma = 0


SCHEDULER.every '5s', :first_in => 0 do
  last_valuation = current_valuation
  last_karma     = current_karma
  current_valuation = rand(100)
  current_karma     = rand(200000)

  send_event('testtest',  { comments: rand(100) } )
  

end

