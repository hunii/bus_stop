require 'json'


data = "[{\"firstName\":\"John\", \"lastName\":\"Doe\"},{\"firstName\":\"Anna\", \"lastName\":\"Smith\"},{\"firstName\":\"Peter\",\"lastName\": \"Jones\"}
\]"





SCHEDULER.every '3s', :first_in => 0 do


  send_event('testtest',  { comments: rand(100) } )
  send_event('testtest1',  { comments: rand(100) } )

end

