require 'json'

usingList = [{:label=>"Developer", :value=>"30/10/2015"}, { :label=>"Tester", :value=>"20/12/2015"}]

jasonfile ="{\"label\":\"Alastair Cooks\"}"
parsedfile = [JSON.parse(jasonfile)]
#example  {"label"=>"Alastair Cook"}


config_file = File.dirname(File.expand_path(__FILE__)) + '/../trytextfile.txt'
config = File.read(config_file)
configjson = [JSON.parse(config)]


textstring = "Jamesstring"

textstring2 = "123234345"

data = [{:label=>"textstring", :value=> "textstring2"}]



# config_file1 = File.dirname(File.expand_path(__FILE__)) + '/../trytextfile1.txt'
# config1 = File.read(config_file1)
# configjson1 = [JSON.parse(config1)]


# array =[configjson, configjson1]


usingComment = [{:name=>"MYOB", :body=>"Using Comment work!!"}]




SCHEDULER.every '1m', :first_in => 0 do |job|

  send_event('myob_list', {items: usingList })
  send_event('testtest1', {comments: usingComment })

  send_event('test1', {items: data })
  send_event('test2', {items: configjson })


end












