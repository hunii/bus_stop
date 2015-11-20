


SCHEDULER.every '20m', :first_in => 0 do |job|
    url = "https://www.google.com"
    puts url
    send_event('myiframe', url: url)
end