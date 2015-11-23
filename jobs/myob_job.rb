# require 'net/http'
# require 'open-uri'
# require 'nokogiri'

# url = "http://fsr.cvmail.com/au/myob/main.cfm"
# data = Nokogiri::HTML(open(url))


# continued = 0
# i = 0
# p = 0


# SCHEDULER.every '1h', :first_in => 0 do
# listing = ""


# numOfJobs = data.css('.textEmphasisStyle').text.strip
# number = (numOfJobs.length%33)/2
# if number == 11
#   number -=1
# end
# if number == 13
#   number -=2
# end
# if number == 15
#   number -=3
# end

# until continued == number do
#   listing += data.css('.textEmphasisStyle')[p].text.strip+" "
#   listing += data.css('.jbTableTextStyle')[i].text.strip+"\n Closing on: "
#   listing += data.css('.jbTableTextStyle')[i+=1].text.strip+" Loc: "
#   listing += data.css('.jbTableTextStyle')[i+=1].text.strip+" \n\n"
#   p += 2
#   i+=1
#   continued += 1
# end


#   send_event('myob_list', { quote: listing })

# end