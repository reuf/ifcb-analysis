
%refline(0.020, 0.0033)
chl = (adcdata(:,5)); green = adcdata(:,4));
low_green_ind = find(green < ((chl+2.05)/0.20)); 
classlist=classlist(low_green_ind,1:4);


figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'YScale','log','YMinorTick','on',...
    'XScale','log',...
    'XMinorTick','on',...
    'PlotBoxAspectRatio',[1 1 1],...
    'FontSize',14);
box(axes1,'on');
hold(axes1,'all');
hold on

m = 0.020; b = 0.0033;  x = 0.0001:0.01:2;
plot((adcdata(:,4)),(adcdata(:,5)), '*', 'markersize', 1);
hold on
plot(x, m*x+b, '-r');
xlim([0.0016 0.3])
ylim([0.0025 0.11])
axis square
ylabel('Chlorophyll fluorescence', 'fontsize', 14, 'fontname', 'arial');
xlabel('FDA fluorescence','fontsize', 14, 'fontname', 'arial');
set(gca, 'FontSize',14);


 figure
plot((adcdata(:,4)),(adcdata(:,5)), '*', 'markersize', 1);
hold on
m = 0.03; b = 0.0033;  x = 0.0001:0.01:0.2;
plot(x, m*x+b, '-r');
xlim([0 0.2]);
ylim([0 0.03]);


%refline(0.03, .0033)


