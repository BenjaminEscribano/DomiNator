%Parameters for the conditioning protocol
XTimesPaired=5;
loops=XTimesPaired-1;


%Conditioning protocol:
pause(120) % 2min habituation time

for ii = 1 : loops
    
    for kk = 1:240      
        writePWMVoltage(DomiNator,LEDChannel1,0);
        pause (.125);
        writePWMVoltage(DomiNator,LEDChannel1,1);
        pause (.125);   
    end
    
    pause(900);
    
end

for kk = 1:240      
    writePWMVoltage(DomiNator,LEDChannel1,0);
    pause (.125);
    writePWMVoltage(DomiNator,LEDChannel1,1);
    pause (.125);   
end
