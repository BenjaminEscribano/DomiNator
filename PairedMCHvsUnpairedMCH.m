%Parameters for the conditioning protocol
XTimesPaired=1;


%Conditioning protocol:

%pause(5);

    %open air
    writeDigitalPin(DomiNator,AirL,1);
    writeDigitalPin(DomiNator,AirR,1);
    pause(120);

for jj = 1 : XTimesPaired
    %Unpaired shock for right side
    writeDigitalPin(DomiNator,ShockDeviceR,1);
    pause(1);
    writeDigitalPin(DomiNator,ShockDeviceR,0);
    pause(360);
    %close air
    writeDigitalPin(DomiNator,AirL,0);
    writeDigitalPin(DomiNator,AirR,0);
    %Odor open
    writeDigitalPin(DomiNator,MCHL,1);
    writeDigitalPin(DomiNator,OCTR,1);
    pause(3);
    %Paired Shock for the left side (MCH)
    writeDigitalPin(DomiNator,ShockDeviceL,1);
    pause(1);
    writeDigitalPin(DomiNator,ShockDeviceL,0);
    pause(54):
    %Clean open
    writeDigitalPin(DomiNator,CleanMCH,1);
    writeDigitalPin(DomiNator,CleanOCT,1);
    pause(2);
    %Odor close
    writeDigitalPin(DomiNator,MCHL,0);
    writeDigitalPin(DomiNator,OCTR,0);
    %Clean close
    writeDigitalPin(DomiNator,CleanMCH,0);
    writeDigitalPin(DomiNator,CleanOCT,0);
    %Air open
    writeDigitalPin(DomiNator,AirL,1);
    writeDigitalPin(DomiNator,AirR,1);
    pause(45);
    %Air close
    writeDigitalPin(DomiNator,AirL,0);
    writeDigitalPin(DomiNator,AirR,0);
    %Odor open
    writeDigitalPin(DomiNator,MCHR,1);
    writeDigitalPin(DomiNator,OCTL,1);
    pause(58);
    
    %Clean open
    writeDigitalPin(DomiNator,CleanMCH,1);
    writeDigitalPin(DomiNator,CleanOCT,1);
    pause(2);
    
    %Odor close
    writeDigitalPin(DomiNator,MCHR,0);
    writeDigitalPin(DomiNator,OCTL,0);
    
    %Clean close
    writeDigitalPin(DomiNator,CleanMCH,0);
    writeDigitalPin(DomiNator,CleanOCT,0);
    
    %Air open
    writeDigitalPin(DomiNator,AirL,1);
    writeDigitalPin(DomiNator,AirR,1);
    pause(15);
    pause(540);
    
end

    %close air
    writeDigitalPin(DomiNator,AirL,0);
    writeDigitalPin(DomiNator,AirR,0);
    %pause(1)
