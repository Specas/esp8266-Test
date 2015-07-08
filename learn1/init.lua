-- This program just blinks an led

lighton = 0
pin = 4 --pin 4 in lua is gpio 2
gpio.mode(pin, gpio.OUTPUT)

function blink()
    if lighton == 0 then
        lighton = 1
        gpio.write(pin, gpio.HIGH)
    else
        lighton = 0
        gpio.write(pin, gpio.LOW)
    end
end

tmr.alarm(1,1000,1,blink())
