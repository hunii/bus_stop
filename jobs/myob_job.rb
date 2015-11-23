require 'json'


data = "[{\"firstName\":\"John\", \"lastName\":\"Doe\"},{\"firstName\":\"Anna\", \"lastName\":\"Smith\"},{\"firstName\":\"Peter\",\"lastName\": \"Jones\"}
\]"


jjson = JSON.parse(data)

send_event('testtest', { comments: jjson['firstName'] })
