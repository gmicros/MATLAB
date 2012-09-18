%% GEORGE MICROS
%% ECE 313 ELECTRONICS
%% CONTRACTION FUNCTION FOR VOLTAGE ACROSS DIODE

clear; clc

% CIRCUIT CONDITIONS
Vdd = 5; %V
R = 1000; %Ohms
Vt = .0259; %V

%INITIAL CONDITIONS
I = .001; %A
Vdiode = .7; %V

Is = I*exp(-Vdiode/Vt);
Vdiode = zeros(10);

%INITAL GUESS VECTOR
guess = [10 -5 .2];

%ITERATION THROUGH GUESS VECTOR
for j = 1:length(guess)
    Vdiode(1) = guess(j);
    Idiode(1) = (Vdd - Vdiode(1))/R;
    fprintf('\n\nInitial guess : Vdiode = %f V, ', Vdiode(1));
    fprintf('      Idiode = %f A\n\n', Idiode(1));
    for i = 2:10 
       %ITERATION USING CONTRACTION FUNCTION
       Vdiode(i) = Vt * abs(log((Vdd-Vdiode(i-1))/(Is*R)));
       fprintf('UPDATED: Vdiode = %f V', Vdiode(i))
       Idiode(i) = (Vdd - Vdiode(i))/R;
       fprintf('Initial guess : Idiode = %f A\n', Idiode(i));

    end
end
