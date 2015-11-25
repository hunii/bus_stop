require 'json'

usingList = [{:label=>"Developer", :value=>"30/10/2015"}, { :label=>"Tester", :value=>"20/12/2015"}]

usingList1 = {:label=>"Developer", :value=>"30/10/2015"}, { :label=>"Tester", :value=>"20/12/2015"}

jasonfile ="[{\"label\":\"Alastair Cook\"}]"

parsedfile = JSON.parse(jasonfile)



usingComment = [{:name=>"MYOB", :body=>"Using Comment work!!"}]




SCHEDULER.every '1m', :first_in => 0 do |job|

  send_event('myob_list', {items: usingList })
  send_event('testtest1', {comments: usingComment })

	send_event('test1', {items: parsedfile })
  send_event('test2', {items: usingList1 })


end





