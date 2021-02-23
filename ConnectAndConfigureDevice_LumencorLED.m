
clear

%Establishing connection to Arduino
%DomiNator=arduino;
%since update ardiono port and version must be specified
DomiNator=arduino('/dev/cu.usbmodem1441201', 'Uno');

%Defining Ports and Valves,LEDs and Shock


LEDChannel1='D9'; %PWM
LEDChannel2='D10'; %PWM

writeDigitalPin(DomiNator,LEDChannel1,1);
writeDigitalPin(DomiNator,LEDChannel2,1);
