require 'webrick'

server = WEBrick::HTTPServer.new(Port: 4001)
server.mount_proc '/' do |req, res|
  res.body = 'Server is running!'
end

trap('INT') { server.shutdown }
server.start
server.rb
