%Parameters for the conditioning protocol
XTimesPaired=5;
loops=XTimesPaired-1;

%LED Intensity:
PercentIntensity=100;
Int=PercentIntensity*0.05;

%LED Pulse Frequency:


%Conditioning protocol:
pause(120) % 2min habituation time

for ii = 1 : loops
    
    writeDigitalPin(DomiNator,ShockDeviceL,1);
    
    for jj = 1:4      
        writePWMVoltage(DomiNator,LEDChannel1,Int);
        pause (.125);
        writePWMVoltage(DomiNator,LEDChannel1,0);
        pause (.125);   
    end

    writeDigitalPin(DomiNator,ShockDeviceL,0);

    for kk = 1:214      
        writePWMVoltage(DomiNator,LEDChannel1,Int);
        pause (.125);
        writePWMVoltage(DomiNator,LEDChannel1,0);
        pause (.125);   
    end
    
    pause(900);
    
end

writeDigitalPin(DomiNator,ShockDeviceL,1);

for jj = 1:4      
    writePWMVoltage(DomiNator,LEDChannel1,Int);
    pause (.125);
    writePWMVoltage(DomiNator,LEDChannel1,0);
    pause (.125);   
end

writeDigitalPin(DomiNator,ShockDeviceL,0);

for kk = 1:214      
    writePWMVoltage(DomiNator,LEDChannel1,Int);
    pause (.125);
    writePWMVoltage(DomiNator,LEDChannel1,0);
    pause (.125);   
end
