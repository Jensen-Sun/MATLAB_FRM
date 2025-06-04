clc; close all; clear all
url = 'https://fred.stlouisfed.org/';
c = fred(url);
startdate = '01/01/2017';
enddate = '12/31/2018';
Treasury_IR = [];
series_nodes = {'DGS1MO';
                'DGS3MO';
                'DGS6MO';
                'DGS1';
                'DGS2';
                'DGS3';
                'DGS5';
                'DGS10';
                'DGS20';
                'DGS30';};
for i = 1:length(series_nodes)
    series = series_nodes(i);
    DATA = fetch(c,series,startdate,enddate);
    Treasury_IR(:,i) = DATA.Data(:,2);
end

date_series = DATA.Data(:,1);

Treasury_IR_nan_removed = Treasury_IR;
Treasury_IR_nan_removed(any(isnan(Treasury_IR),2),:) = [];

date_series_nan_removed = date_series;
date_series_nan_removed(any(isnan(Treasury_IR),2)) = [];

nodes = [1/12, 3/12, 6/12, 1, 2, 3, 5, 10, 20, 30];
index = 1;
figure(index)
index = index + 1;

mesh(nodes, date_series_nan_removed(1:10:end),...
    Treasury_IR_nan_removed(1:10:end,:))
datetick('y','yyyy-mmm','keeplimits')
xlabel('Tenor nodes [year]')
ylabel('Time [year]')
zlabel('Treasury rate [%]')

figure(index)
index = index + 1;
mesh(nodes, date_series_nan_removed(1:10:end),...
    Treasury_IR_nan_removed(1:10:end,:),'MeshStyle','column')
datetick('y','yyyy-mmm','keeplimits')
xlabel('Tenor nodes [year]')
ylabel('Time [year]')
zlabel('Treasury rate [%]')

figure(index)
index = index + 1;
mesh(nodes, date_series_nan_removed(1:10:end),...
    Treasury_IR_nan_removed(1:10:end,:),'MeshStyle','row')
datetick('y','yyyy-mmm','keeplimits')
xlabel('Tenor nodes [year]')
ylabel('Time [year]')
zlabel('Treasury rate [%]')
