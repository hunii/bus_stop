require 'json'

usingList = [{:label=>"Deveoper", :value=>"30/20/2015"}, { :label=>"Sort", :value=>30}]

usingComment = [{:name=>"MYOB", :body=>"Using Comment work!!"}]





SCHEDULER.every '1m', :first_in => 0 do |job|

  send_event('myob_list', {items: usingList })
  send_event('testtest1', {comments: usingComment })


end





