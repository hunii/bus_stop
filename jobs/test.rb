require 'net/http'
require 'json'

YOUTUBE_URI = URI.parse("http://www.youtube.com/")

def youtube_json(page)
  uri = YOUTUBE_URI.dup
  uri.path = '/api/photos'
  uri.query = "page=#{page}"
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

def youtube(page)
  json = youtube_json(page)
  json.map do |video|
    uri = YOUTUBE_URI.dup
    uri.path = video["image"]["url"]
    uri
  end
end

page = 1

SCHEDULER.every '1m', :first_in => 0 do |job|
  puts "PAGE #{page}"
  videos = youtube(page)

  if videos.empty?
    page = 1
    videos = youtube(page)
  end

  send_event("youtube", {page: page, youtube: videos})
  page = page + 1
end