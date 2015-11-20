require 'net/http'


   #sample    source = 'http://localhost:3000/qwerty/give_json.json'

   source = 'a0.awsstatic.com/pricing/1/rds/aurora/pricing-multiAZ-deployments.min.js'

   resp = Net::HTTP.get_response(URI.parse(source))
   data = resp.body
   result = JSON.parse(data)

SCHEDULER.every '2s', :first_in => 0 do




  
  send_event('test1',   { value: result })


end
