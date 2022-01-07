%-----------------------------------------
% start up
clear all
close all
clc

%-----------------------------------------
% Figure plotting defaults
width   = 3.0;   % fig width (in)
height  = 3.0;   % fig height (in)
alw     = 0.75;  % axis line width
tfsz    = 10;    % text font size
nfsz    = 10;    % numerical font size
lw      = 0.4;   % line width
msz     = 5;     % marker size
figname = 'default';

%-----------------------------------------
% required usr input
name    = 'epp_glass-hdpe'; 
dat_dir = '../../data/particle_properties/';
dat_ext = '.txt'; 
fig_dir = '../../figs/particle_properties/';
fig_ext = '.png'; 

%concat input data filename and output figure name
dat_name = strcat(dat_dir,name,dat_ext); 
fig_name = strcat(fig_dir,name,fig_ext);

%-----------------------------------------
% import and manipulate data 
dat     = importdata(dat_name); 
N       = size(dat,1);
dat_srt = sort(dat);
dP      = 1./double(N);
xy      = zeros(2*N,2);
P       = 0.0;
for ii = 1:N
       xy(2*ii-1,1) = dat_srt(ii);
       xy(2*ii-1,2) = P;
       xy(2*ii,1)   = dat_srt(ii);
       xy(2*ii,2)   = P+dP;
       P = P+dP;
end

% print data stats
fprintf(1,'*  median  = %10.4f\n',median(dat));
fprintf(1,'*  mean    = %10.4f\n',mean(dat));
fprintf(1,'*  stdev   = %10.4f\n',std(dat));
fprintf(1,'*  95 CI   = %10.4f\n',std(dat)*tinv(0.975,N-1)/sqrt(double(N)));

%-----------------------------------------
% plot  
close('all')
fid = figure;
figure(fid);
pos = get(gcf, 'Position');
set(gca, 'FontSize', nfsz, 'LineWidth', alw); %set properties

ecdf1a = plot(xy(:,1),xy(:,2), '-k', 'LineWidth', lw);

% axes
axis square
%set(gca,'XLim',[0.5 20]);    
set(gca,'YLim',[0 1]);    
%set(gca,'XTick',[0.1 1 10])
set(gca,'YTick',0.0:0.1:1.0)

% Titles & labels
xlabel('e_p_p (-)', 'FontSize', tfsz); %, 'rot', 0);
ylabel('eCDF', 'FontSize', tfsz);

% print
set(gcf,'InvertHardcopy','on');
set(gcf,'PaperUnits', 'inches');
papersize = get(gcf, 'PaperSize');
left = (papersize(1)- width)/2;
bottom = (papersize(2)- height)/2;
myfiguresize = [left, bottom, width, height];
set(gcf,'PaperPosition', myfiguresize);

print(fig_name,'-dpng','-r300');


%-----------------------------------------
% close
close(fid);
clear('fid');
%exit


%-----------------------------------------
% EO eof eor EO
