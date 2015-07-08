SSID = "ScreamingSilence"
PWD = "Knowledge_Is_P0w3r"

wifi.setmode(wifi.STATION)

-- set up wifi connection
tmr.alarm(0, 1000, 0, function()

    wifi.sta.config(SSID, PWD)
    if(wifi.sta.getip()==nil) then
        print("Connecting...")
    else
        tmr.stop(0)
    end
end)
        
print(wifi.sta.getip())