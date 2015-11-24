require 'json'


data = "[{\"firstName\":\"John\", \"lastName\":\"Doe\"},{\"firstName\":\"Anna\", \"lastName\":\"Smith\"},{\"firstName\":\"Peter\",\"lastName\": \"Jones\"}
\]"


jjson = JSON.parse(data)




#     if tweets
#       tweets = tweets.map do |tweet|
#         { name: tweet.user.name, body: tweet.text, avatar: tweet.user.profile_image_url_https }
#       end
#       send_event('twitter_mentions', comments: tweets)


# jjson.map do |son|
# 	son = {
# 		:firstName =>
# 	}


send_event('testtest', { comments: data })
