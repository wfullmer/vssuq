%-----------------------------------------
% start up
clear all
close all
clc

% unit conversion constants for convenience
fp = 101325./14.696;     % convert (psi) -> (Pa)
fq = (12.*0.0254)^3/60.; % convert (ft^3/min) -> (m^3/s)

% flow area  
Lx    =  38.09e-3;       %(m)
dLx   =   0.02e-3;       %(m) absolute error 
Lz    =  38.11e-3;       %(m)
dLz   =   0.02e-3;       %(m)
A     = Lx*Lz;           %(m^2)

% lab conditions 
Tlab  = 293.15;          %(K)
Plab  = 12.15;           %(psia)
Plab  = Plab*fp;         %(psi -> Pa)
dTlab =   5.;            %(K)
dPlab = 0.5*fp;          %(Pa)  

% rotameter calibrated standard conditions
Tstd  =  70.;            %(F)
Pstd  =  14.7;           %(psi)
Tstd  = (Tstd - 32.)*5./9. + 273.15;    %(F -> K)
Pstd  = Pstd*fp;         %(psi -> Pa)

% back temperature (unknown)
Tbck  = Tlab ;           %(K)
dTbck =  10.;            %(K)

% relative error in the pressure regulator and flowmeter 
ePbck =   0.02;          %(%)
eQobs =   0.02;          %(%)

% check: set Tbck = Tlab = Tstd to get same values as Wyatt 
%Tbck = Tstd;
%Tlab = Tstd; 

% for the three flow conditions, calculate: 
% 1. calculate the actual flow rate from the observed flow rate correcting for 
%    the flowmeter backpressure and the non-standard operating (exit) conditions 
% 2. U from Q
% 3. the estimated error in U
fprintf(1,'           |     U (m/s)    dU (m/s)\n');
fprintf(1,'------------------------------------\n');

% condition 1: 
Qobs  =   3.6;           %("observed" SCFM) [standard cubic feet per minute read on the rotameter]
Pbck  =  12.5;           %(psig) 

Pbck  = Pbck;            %(psig -> psia)
Pbck  = Pbck*fp + Plab;  %(psig -> Pa)
Qstd  = Qobs*sqrt(Pbck/Pstd*Tstd/Tbck);   %("actual" SCFM) [Q at rotameter standard conditions]
Q     = (Pstd/Plab)*(Tlab/Tstd)*Qstd;     %(ft^3/min)
Q     = Q*fq;                             %(ft3/min -> m3/s)
U     = Q/A;             %(m/s)
dU    = U*sqrt(eQobs^2 + (dLx/Lx)^2 + (dLz/Lz)^2 + 0.25*ePbck^2 + 0.25*(dTbck/Tbck)^2 + (dPlab/Plab)^2 + (dTlab/Tlab)^2);
fprintf(1,'condition 1|%12.6f%12.6f\n',U,dU);


% condition 2: 
Qobs  =   3.8;           %("observed" SCFM) [standard cubic feet per minute read on the rotameter]
Pbck  =  14.0;           %(psig) 

Pbck  = Pbck;            %(psig -> psia)
Pbck  = Pbck*fp + Plab;  %(psig -> Pa)
Qstd  = Qobs*sqrt(Pbck/Pstd*Tstd/Tbck);   %("actual" SCFM) [Q at rotameter standard conditions]
Q     = (Pstd/Plab)*(Tlab/Tstd)*Qstd;     %(ft^3/min)
Q     = Q*fq;                             %(ft3/min -> m3/s)
U     = Q/A;             %(m/s)
dU    = U*sqrt(eQobs^2 + (dLx/Lx)^2 + (dLz/Lz)^2 + 0.25*ePbck^2 + 0.25*(dTbck/Tbck)^2 + (dPlab/Plab)^2 + (dTlab/Tlab)^2);
fprintf(1,'condition 2|%12.6f%12.6f\n',U,dU);


% condition 3: 
Qobs  =   4.0;           %("observed" SCFM) [standard cubic feet per minute read on the rotameter]
Pbck  =  15.0;           %(psig) 

Pbck  = Pbck;            %(psig -> psia)
Pbck  = Pbck*fp + Plab;  %(psig -> Pa)
Qstd  = Qobs*sqrt(Pbck/Pstd*Tstd/Tbck);   %("actual" SCFM) [Q at rotameter standard conditions]
Q     = (Pstd/Plab)*(Tlab/Tstd)*Qstd;     %(ft^3/min)
Q     = Q*fq;                             %(ft3/min -> m3/s)
U     = Q/A;             %(m/s)
dU    = U*sqrt(eQobs^2 + (dLx/Lx)^2 + (dLz/Lz)^2 + 0.25*ePbck^2 + 0.25*(dTbck/Tbck)^2 + (dPlab/Plab)^2 + (dTlab/Tlab)^2);
fprintf(1,'condition 3|%12.6f%12.6f\n',U,dU);


% close up
close all 
%exit
% EOF eof eor EOR
