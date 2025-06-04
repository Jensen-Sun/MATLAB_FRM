clc; clear all; close all
url = 'https://fred.stlouisfed.org/';
c = fred(url);
series = 'USDONTD156N';
startdate = '01/01/2005';
enddate = '11/18/2018';

LIBOR_overnight_data = fetch(c,series,startdate,enddate)
LIBOR_overnight = LIBOR_overnight_data.Data(:,2);
date_series = LIBOR_overnight_data.Data(:,1);

series = 'USD1MTD156N';
LIBOR_1_wk_data = fetch(c,series,startdate,enddate)
LIBOR_1_wk = LIBOR_1_wk_data.Data(:,2);

figure(1)
plot(date_series, LIBOR_overnight); hold on
plot(date_series, LIBOR_1_wk); hold on
datetick('x','yyyy','keeplimits')
xlim([date_series(1)-1, date_series(end)+1])
ylim([0,max(LIBOR_overnight)*1.1])
xlabel('Year')
ylabel('LIBOR [%]')
set(gcf,'color','white')
legend('Overnight LIBOR','1-week LIBOR')

axes('Position',[.5 .3 .3 .4])
box on
indexOfInterest = [length(date_series)-120: length(date_series)];
plot(date_series(indexOfInterest), LIBOR_overnight(indexOfInterest));
hold on
plot(date_series(indexOfInterest), LIBOR_1_wk(indexOfInterest));
hold on
datetick('x','yyyy/mmm','keeplimits')

figure(2)
spread = LIBOR_overnight - LIBOR_1_wk;
plot(date_series, spread);

datetick('x','yyyy','keeplimits')
xlim([date_series(1)-1, date_series(end)+1])
ylim([min(spread)*1.1, max(spread)*1.1])
xlabel('Year')
ylabel('LIBOR spread (overnight - 1 week) [%]')
set(gcf, 'color', 'white')
set(gca, 'XAxisLocation', 'origin')
