


SCHEDULER.every '20m', :first_in => 0 do |job|
    url = "https://www.youtube.com/watch?v=a38oYlrREYI"
    puts url
    send_event('myiframe', url: url)
end