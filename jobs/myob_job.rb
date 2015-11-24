require 'json'


data = "[{\"firstName\":\"John\", \"lastName\":\"Doe\"},{\"firstName\":\"Anna\", \"lastName\":\"Smith\"},{\"firstName\":\"Peter\",\"lastName\": \"Jones\"}
\]"



items = [{label: "l1", value: "v1"},{label: "l2", value: "v2"},{label: "l3", value: "v3"}]
json_formatted_items = items.to_json
# => "[{\"label\":\"l1\",\"value\":\"v1\"},{\"label\":\"l2\",\"value\":\"v2\"},{\"label\":\"l3\",\"value\":\"v3\"}]"



SCHEDULER.every '1m', :first_in => 0 do |job|
  send_event('testtest', {items: json_formatted_items })
end



SCHEDULER.every '3s', :first_in => 0 do


  send_event('testtest4',  { items: rand(100) } )
  send_event('testtest14',  { items: rand(100) } )

end

