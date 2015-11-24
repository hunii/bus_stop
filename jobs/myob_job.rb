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

url = File.open("/jobs/test1.txt", "r")
contents = url.read
puts contents


SCHEDULER.every '5s', :first_in => 0 do

	send_event('testtest',  {comments: contents} )
	send_event('testtest1',  comments: contents )
end