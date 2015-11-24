require 'json'




openafile = File.open("trytextfile.txt", "r+")
readafile = openafile.read

config_file = File.dirname(File.expand_path(__FILE__)) + '/../trytextfile.txt'
config = File.open(config_file)
readafile1 = config.read


SCHEDULER.every '1s', :first_in => 0 do |job|

  send_event('textfile', {items: readafile })
  send_event('textfile1', {items: readafile1 })


end





