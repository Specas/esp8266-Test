print(wifi.sta.getip())
wifi.setmode(wifi.STATION)
wifi.sta.config("-----", "-----")
wifi.sta.autoconnect(1) -- enables auto correct
tmr.delay(1000000)
print(wifi.sta.getip())
print("status: "..wifi.sta.status())
