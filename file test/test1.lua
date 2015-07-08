function blink()
    i=10
    gpio.mode(4, gpio.OUTPUT)
    while i>=0 do
        gpio.write(4, gpio.HIGH)
        tmr.delay(500000)
        gpio.write(4, gpio.LOW)
        tmr.delay(500000)
        i = i-1
    end
end  
    