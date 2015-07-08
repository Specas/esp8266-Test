
-- first we setup the wifi. We call the wifi_setup file
dofile("wifi_setup.lua")

-- The following code does the task of reading php data and
-- controlling led
--This code works :)

-- setup led
led = 4
gpio.mode(led, gpio.OUTPUT)


-- function to get the i0ti0t led state
function get_led_state(str)

    if(str~=nil) then

            
        -- led_state stores the php data -> on or off
        --curr is used to get to the php data
        local led_state
        local curr = false

        -- We get each word
        for word in str:gmatch("%w+") do 

            if(curr == true) then
                -- we know that the current word is the data
                led_state = word
                print(led_state)
            end
                
            if(word == "i0ti0t") then
                --We know that the word following this is on or off
                --thus if curr is true, then we know that the next word
                -- is the required data
                -- Thus in the next iteration, we catch the word
                curr = true
                    
            elseif(word~="i0ti0t") then
            --reset 
                curr = false
            end
                    
        end

        -- Switch the led on or off
        if(led_state == "on") then
            gpio.write(led, gpio.HIGH)
            

        elseif(led_state == "off") then
            gpio.write(led, gpio.LOW)

        end

    elseif(str==nil) then
        print("No data received...Trying again")

    end -- end of if

end -- end of function


tmr.alarm(1,1000,1,function()
    sk = net.createConnection(net.TCP,0) 
    sk:on("receive", function(sck, str) get_led_state(str) end)           
    sk:connect(80, "www.iot.netne.net")
    sk:on("connection", function(sk, payload)
        sk:send("GET /php_files/led_read.php HTTP/1.1\r\nHost: www.iot.netne.net\r\nConnection: keep-alive\r\nAccept: */*\r\n\r\n")end)
    sk:close()
end) -- end of alarm






