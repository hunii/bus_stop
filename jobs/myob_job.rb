require 'json'
require 'open-uri'

# Job list for NZ ONLY
def webToList(url)

	webpage = open(url)
	html = webpage.read
	newHTML = ""

	for char in html.split("")
	  if char == ">" or char == "=" or char == "-"
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
			htmlList.delete_at(htmlList.find_index(item))
		end
	end
	return jobList
end

jobListNZ = webToList("http://fsr.cvmail.com.au/myob/main.cfm?page=jobBoard&fo=1&groupType_7=&groupType_8=7173&groupType_8=7174&groupType_8=7414&groupType_11=&filter")
jobListAU = webToList("http://fsr.cvmail.com.au/myob/main.cfm?page=jobBoard&fo=1&groupType_7=&groupType_8=7172&groupType_8=7170&groupType_8=7175&groupType_8=7168&groupType_8=7171&groupType_8=7169&groupType_11=&filter")

iterateNZ = -1
iterateAU = -1
SCHEDULER.every '10s', :first_in => 0 do |job|

  if iterateNZ != jobListNZ.count
  	iterateNZ += 1
  else
  	iterateNZ = 0
  end
  if iterateAU != jobListAU.count
  	iterateAU += 1
  else
  	iterateAU = 0
  end
  dataNZ = [{:label=>"Available MYOB Position in NZ", :value=> jobListNZ[iterateNZ]}] 
  dataAU = [{:label=>"Available MYOB Position in AU", :value=> jobListAU[iterateAU]}] 
  send_event('job_list_NZ', {items: dataNZ })
  send_event('job_list_AU', {items: dataAU })


end


