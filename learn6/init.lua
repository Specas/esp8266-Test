i = 10
gpio.mode(3, gpio.OUTPUT)
while true do
    gpio.write(4, gpio.HIGH)
    tmr.delay(500000)
    gpio.write(4, gpio.LOW)
    tmr.delay(500000)
--    i = i-1
end