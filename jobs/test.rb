require 'json'




openafile = File.open("trytextfile.txt", "r+")
readafile = openafile.read




SCHEDULER.every '1s', :first_in => 0 do |job|

  send_event('textfile', {items: readafile })
 


end





