print(wifi.sta.getip())
wifi.setmode(wifi.STATION)
wifi.sta.config("ScreamingSilence", "Knowledge_Is_P0w3r")
wifi.sta.connect()
tmr.delay(1000000)
print(wifi.sta.getip())
print("status: "..wifi.sta.status())
