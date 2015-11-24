require 'json'


data = [{firstName:"John", lastName:"Doe"},{firstName:"Anna", lastName:"Smith"},{firstName:"Peter",lastName: "Jones"}]



items = [{label: "l1", value: "v1"},{label: "l2", value: "v2"},{label: "l3", value: "v3"}]
json_formatted_items = items.to_json
# => "[{\"label\":\"l1\",\"value\":\"v1\"},{\"label\":\"l2\",\"value\":\"v2\"},{\"label\":\"l3\",\"value\":\"v3\"}]"



SCHEDULER.every '3s', :first_in => 0 do |job|
  send_event('testtest', {items: json_formatted_items })
  send_event('testtest1', {items: data })
end





