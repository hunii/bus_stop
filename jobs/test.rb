require 'json'




openafile = File.open("trytextfile.txt", "r+")
readafile = openafile.read

openafile1 = File.open("/trytextfile.txt", "r+")
readafile1 = openafile1.read



SCHEDULER.every '1s', :first_in => 0 do |job|

  send_event('textfile', {items: readafile })
  send_event('textfile1', {items: readafile1 })


end





