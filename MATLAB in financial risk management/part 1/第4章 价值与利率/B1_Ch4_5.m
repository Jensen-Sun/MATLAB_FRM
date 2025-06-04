clc; clear all; close all
url = 'https://fred.stlouisfed.org/';
c = fred(url);
series = 'FEDFUNDS';
startdate = '01/01/1956';
enddate = '11/18/2018';

FEDFUNDS_data = fetch(c,series,startdate,enddate)
FEDFUNDS = FEDFUNDS_data.Data(:,2);
date_series = FEDFUNDS_data.Data(:,1);

series = 'MPRIME';
MPRIME_data = fetch(c,series,startdate,enddate)
MPRIME = MPRIME_data.Data(:,2);

figure(1)
plot(date_series, MPRIME)
datetick('x','yyyy','keeplimits')
xlim([date_series(1)-1, date_series(end)+1])
ylim([0,max(MPRIME)*1.1])
xlabel('Year')
ylabel('Bank Prime Loan Rate [%]')
set(gcf,'color','white')

figure(2)
spread_Bank_prime_minus_FFR = MPRIME - FEDFUNDS;
plot(date_series, MPRIME); hold on
plot(date_series, FEDFUNDS,'--'); hold on
plot(date_series,spread_Bank_prime_minus_FFR); hold on

curve1 = spread_Bank_prime_minus_FFR';
x2 = [date_series',fliplr(date_series')];
curve2 = zeros(1,length(curve1));
inBetween = [curve1, fliplr(curve2)];
fill(x2, inBetween, 'g');

datetick('x','yyyy','keeplimits')
xlim([date_series(1)-1, date_series(end)+1])
ylim([min(spread_Bank_prime_minus_FFR)*1.1, max(MPRIME)*1.1])
xlabel('Year')
ylabel('Rates [%]')
set(gcf,'color','white')
legend('Bank Prime Loan Rate','Federal Funds Rate','Spread')
box off
set(gca,'XAxisLocation','origin')