clc; clear all; close all
url = 'https://fred.stlouisfed.org/';
c = fred(url);
series = 'FEDFUNDS';
startdate = '01/01/1954';
enddate = '11/18/2018';

d = fetch(c,series,startdate,enddate)

FEDFUNDS = d.Data(:,2);
date_series = d.Data(:,1);

figure(1)
plot(date_series, FEDFUNDS)
datetick('x','yyyy','keeplimits')
xlim([date_series(1)-1, date_series(end)+1])
ylim([0,max(FEDFUNDS)*1.1])
xlabel('Year')
ylabel('Effective Federal Funds Rate [%]')
set(gcf,'color','white')