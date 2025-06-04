clc; clear all; close all
url = 'https://fred.stlouisfed.org/';
c = fred(url);
series = 'DGS1MO';
startdate = '01/01/2005';
enddate = '11/18/2018';
treasury_1_month_data = fetch(c,series,startdate,enddate)
treasury_1_month = treasury_1_month_data.Data(:,2);
date_series = treasury_1_month_data.Data(:,1);

series = 'DGS3MO';
treasury_3_month_data = fetch(c,series,startdate,enddate)
treasury_3_month = treasury_3_month_data.Data(:,2);

series = 'DGS6MO';
treasury_6_month_data = fetch(c,series,startdate,enddate)
treasury_6_month = treasury_6_month_data.Data(:,2);

series = 'DGS1';
treasury_12_month_data = fetch(c,series,startdate,enddate)
treasury_12_month = treasury_12_month_data.Data(:,2);

figure(1)
plot(date_series, treasury_1_month); hold on
plot(date_series, treasury_3_month); hold on
plot(date_series, treasury_6_month); hold on
plot(date_series, treasury_12_month); hold on
datetick('x','yyyy','keeplimits')
xlim([date_series(1)-1, date_series(end)+1])
ylim([0,max(treasury_12_month)*1.1])
xlabel('Year')
ylabel('Treasury zero coupon rate [%]')
set(gcf,'color','white')
legend('1 month','3 month','6 month','12 month')

% create a zoomed-in inside
axes('Position',[.5 .3 .3 .4])
box on
indexOfInterest = [length(date_series)-120: length(date_series)];
plot(date_series(indexOfInterest),...
    treasury_1_month(indexOfInterest)); hold on
plot(date_series(indexOfInterest),...
    treasury_3_month(indexOfInterest)); hold on
plot(date_series(indexOfInterest),...
    treasury_6_month(indexOfInterest)); hold on
plot(date_series(indexOfInterest),...
    treasury_12_month(indexOfInterest)); hold on

datetick('x','yyyy/mmm','keeplimits')







