require 'json'
require 'open-uri'

webpage = open('http://fsr.cvmail.com.au/myob/main.cfm?page=jobBoard&fo=1&groupType_7=&groupType_8=7173&groupType_8=7174&groupType_8=7414&groupType_11=&filter')
html = webpage.read
newHTML = ""

for char in html.split("")
  if char == ">" or char == "="
      newChar = "<"
  elsif char == "\n" or char == "\r" or char == "\t"
  newChar = ""
  else
    newChar = char
  end
  newHTML += newChar

end
htmlList = newHTML.split("<")
jobList = []
for item in htmlList
	if item == "\"jobMoreDetailCaptionStyle\""
		jobList.push(htmlList[(htmlList.find_index(item))+1])
	end
end



config_file = File.dirname(File.expand_path(__FILE__)) + '/../joblist.txt'
config = File.read(config_file)
list = config.split("/")

textstring = "Jamesstring"
textstring2 = ["123234345", "0000", "333", "4444"]

iterate = -1



SCHEDULER.every '10s', :first_in => 0 do |job|

  if iterate != jobList.count
  	iterate += 1
  else
  	iterate = 0
  end
  data = [{:label=>textstring, :value=> jobList[iterate]}] 
  send_event('test1', {items: data })



end


