-- fade in and out

pwm.setup(4, 100, 1023)
for i = 1,1023 do
    pwm.start(4)
    pwm.setduty(4, i)
    tmr.delay(1000)
end

for i = 1,1023 do
    pwm.start(4)
    pwm.setduty(4, 1023-i)
    tmr.delay(1000)
end
pwm.stop(4)