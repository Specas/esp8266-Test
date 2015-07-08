wifi.sta.config("ScreamingSilence", "Knowledge_Is_P0w3r")
wifi.sta.connect()
tmr.delay(1000000) -- wait 1000000 us which is 1 sec
print(wifi.sta.status())
print(wifi.sta.getip())

sk=net.createConnection(net.TCP, 0)
sk:on("receive", function(sck, c) print(c) end )
sk:connect(80,"http://www.adafruit.com")
sk:send("GET /testwifi/index.html HTTP/1.1\r\nHost: www.adafruit.com\r\nConnection: keep-alive\r\nAccept: */*\r\n\r\n")