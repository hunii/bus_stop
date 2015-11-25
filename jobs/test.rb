require 'json'
require 'pp'
require 'rubygems'



openafile = File.open('trytextfile.txt')

# openafile1 =[{
#   "label":"Mike",
#   "value":"Here" 
# }]





# readafile = JSON.parse(openafile)

# newArray = []
# key = readafile.keys
# key.each do |kkey|
# 	array_value = readafile[kkey]
# 	array = Hash.new("label", kkey, "value", array_value)
# 	newArray.push(array)
# end


# config_file = File.dirname(File.expand_path(__FILE__)) + '/../trytextfile.txt'
# config = File.open(config_file)
# readafile1 = config.read

select1 = readafile1["body"]


SCHEDULER.every '1m', :first_in => 0 do |job|

  send_event('textfile', {items: newArray })
  send_event('textfile1', {items: select1 })


end





