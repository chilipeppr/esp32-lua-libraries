-- ChiliPeppr Websocket for ESP32 test
-- Visit http://chilipeppr.com/esp32 for more details

ws = require('esp32_websocket')
ws.on("receive", function(data, fin)
  -- fin of 1 or nil means you got all data
  -- fin of 0 means extended data will come in
  print("Got data:" .. data .. ", fin:", fin)
end)
ws.on("connection", function(host, port, path)
  print("Websocket connected to host:", host, "port:", port, "path:", path)
  ws.send("list")
end)
ws.on("disconnection", function()
  print("Websocket got disconnect from:", ws.wsUrl)
end)
ws.on("pingsend", function()
  print("Ping")
end)
ws.on("pongrecv", function()
  print("Got pong. We're alive.")
end)

-- Use ChiliPeppr wifi library to auto-connect to wifi
wf = require("esp32_wifi")
wf.on("connection", function(info)
  print("Got wifi. IP:", info.ip, "Netmask:", info.netmask, "GW:", info.gw)
  ws.init(info.ip)
  -- This sample websocket is Serial Port JSON server
  -- Set this to your own 2nd SPJS, not the local one, or you'll get loopbacks
  -- ws.connect("ws://10.0.0.201:8989/ws")
  -- Example public websocket server
  ws.connect("ws://demos.kaazing.com/echo")
end)
wf.init()
                            