socket = require("socket")
io.write("Trying to connect to host > ")
server = io.read()
io.write("Connect to port > ")
port = io.read()
client = socket.connect(server, port)
if client then
	io.write("Connection established!\n")
	while true do

		io.write("Client message > ")
		client:send(io.read().."\n")
		reply = client:receive()
		io.write(reply.. "\n")
	end
end



