require 'json'
require 'pp'
require 'rubygems'
require 'roo'



config_file = File.dirname(File.expand_path(__FILE__)) + '/../trytextfile.txt'
config = File.open(config_file)



SCHEDULER.every '1m', :first_in => 0 do |job|

  send_event('textfile', {items: newArray })
  send_event('textfile1', {items: select1 })


end





