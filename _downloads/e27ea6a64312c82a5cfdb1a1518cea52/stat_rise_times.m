%-----------------------------------------
% start up
clear all
close all
clc

%-----------------------------------------
% required usr input
namelist = {'U183_M177_1L', ...
            'U183_M177_4L', ...
            'U183_M227_1L', ...
            'U183_M227_4L', ...
            'U199_M177_2L', ...
            'U214_M177_2L', ...
            'U214_M177_2S', ...
            'U214_M177_4L'};
dat_dir  = '../../data/measurements/';
dat_ext  = '.txt'; 

% number of data files
Ndat = size(namelist,2); 

% loop over all data files and print ave and CI 
for ii = 1:Ndat
  %concat input data filename
  dat_name = strcat(dat_dir,namelist{1,ii},dat_ext); 

  % init output data arrays
  ave = -1.*ones(1,4); 
  ci  = zeros(1,4); 
  
  % import and manipulate data 
  dat     = importdata(dat_name); 
  Nr      = size(dat,1); %number of runs
  Np      = size(dat,2); %number of intruder particles
  for pp = 1:Np
    ave(pp) = mean(dat(:,pp)); 
    ci(pp)  = std(dat(:,pp))*tinv(0.975,Nr-1)/sqrt(double(Nr));
  end
  
  % print out to screen
  if (ii == 1)
    fprintf(1,'           name        t_rise(1)               t_rise(2)               t_rise(3)               t_rise(4)        \n');
    fprintf(1,'---------------------------------------------------------------------------------------------------------------\n');
   end
    fprintf(1,'   %12s\t%8.3f  \\pm %6.3f\t%8.3f  \\pm %6.3f\t%8.3f  \\pm %6.3f\t%8.3f  \\pm %6.3f\t\n',namelist{1,ii},ave(1),ci(1),ave(2),ci(2),ave(3),ci(3),ave(4),ci(4));
  
  % next data file
end
% close up
close all 
%exit
% EOF eof eor EOR