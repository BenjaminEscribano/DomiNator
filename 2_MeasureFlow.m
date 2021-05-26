%Open valves of each channel and wait for user input
    
    prompt='Are you done with measuring the flow?';

    writeDigitalPin(DomiNator,AirL,1);
    writeDigitalPin(DomiNator,AirR,1);
    str = input(prompt,'s');
    writeDigitalPin(DomiNator,AirL,0);
    writeDigitalPin(DomiNator,AirR,0);

   
    writeDigitalPin(DomiNator,MCHL,1);
    writeDigitalPin(DomiNator,OCTR,1);
    str = input(prompt,'s');
    writeDigitalPin(DomiNator,CleanMCH,1);
    writeDigitalPin(DomiNator,CleanOCT,1);
    str = input(prompt,'s');
    writeDigitalPin(DomiNator,MCHL,0);
    writeDigitalPin(DomiNator,OCTR,0);
    writeDigitalPin(DomiNator,CleanMCH,0);
    writeDigitalPin(DomiNator,CleanOCT,0);
    
    writeDigitalPin(DomiNator,OCTL,1);
    writeDigitalPin(DomiNator,MCHR,1);
    str = input(prompt,'s');
    writeDigitalPin(DomiNator,CleanMCH,1);
    writeDigitalPin(DomiNator,CleanOCT,1);
    str = input(prompt,'s');
    writeDigitalPin(DomiNator,OCTL,0);
    writeDigitalPin(DomiNator,MCHR,0);
    writeDigitalPin(DomiNator,CleanMCH,0);
    writeDigitalPin(DomiNator,CleanOCT,0);
    
    
    