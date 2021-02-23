%Clean and Disconnect the Device

CleaningRounds = 2;

for jj = 1 : CleaningRounds
    
    writeDigitalPin(DomiNator,AirL,1);
    writeDigitalPin(DomiNator,AirR,1);
    pause(2);
    writeDigitalPin(DomiNator,AirL,0);
    writeDigitalPin(DomiNator,AirR,0);

    writeDigitalPin(DomiNator,MCHL,1);
    writeDigitalPin(DomiNator,OCTR,1);
    pause(2);
    writeDigitalPin(DomiNator,CleanMCH,1);
    writeDigitalPin(DomiNator,CleanOCT,1);
    pause(2);
    writeDigitalPin(DomiNator,MCHL,0);
    writeDigitalPin(DomiNator,OCTR,0);
    writeDigitalPin(DomiNator,CleanMCH,0);
    writeDigitalPin(DomiNator,CleanOCT,0);

    writeDigitalPin(DomiNator,OCTL,1);
    writeDigitalPin(DomiNator,MCHR,1);
    pause(2);
    writeDigitalPin(DomiNator,CleanMCH,1);
    writeDigitalPin(DomiNator,CleanOCT,1);
    pause(2);
    writeDigitalPin(DomiNator,OCTL,0);
    writeDigitalPin(DomiNator,MCHR,0);
    writeDigitalPin(DomiNator,CleanMCH,0);
    writeDigitalPin(DomiNator,CleanOCT,0);

    writeDigitalPin(DomiNator,AirL,1);
    writeDigitalPin(DomiNator,AirR,1);
    pause(2);
    writeDigitalPin(DomiNator,AirL,0);
    writeDigitalPin(DomiNator,AirR,0);
end









clear;