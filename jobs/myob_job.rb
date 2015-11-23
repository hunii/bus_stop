require 'json'


data = "[{\"firstName\":\"John\", \"lastName\":\"Doe\"},{\"firstName\":\"Anna\", \"lastName\":\"Smith\"},{\"firstName\":\"Peter\",\"lastName\": \"Jones\"}
\]"

puts data


jjson = JSON.parse(data)

send_event('testtest',   comments: jjson['firstName'] )

puts jjson