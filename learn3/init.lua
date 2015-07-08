wifi.sta.config("ScreamingSilence", "Knowledge_Is_P0w3r")
wifi.sta.connect()
tmr.delay(1000000) -- wait 1000000 us which is 1 sec
print(wifi.sta.status())
print(wifi.sta.getip())
