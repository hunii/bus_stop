require 'json'




openafile = File.open("./trytextfile.txt", "r+")
readafile = openafile.read

select = readafile["body"]


config_file = File.dirname(File.expand_path(__FILE__)) + '/../trytextfile.txt'
config = File.open(config_file)
readafile1 = config.read

select1 = readafile1["body"]


SCHEDULER.every '1m', :first_in => 0 do |job|

  send_event('textfile', {items: select })
  send_event('textfile1', {items: select1 })


end





