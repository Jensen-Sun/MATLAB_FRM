% linear interpolation of interest rates
clc; clear all; close all

tenors = [0.019231, 0.038462, 0.083333, 0.25, 0.5, 1];
IRs = [0.0180 0.0195 0.0203 0.0235 0.0250 0.0272];
CF_dates = [61, 122, 184, 304]/365;
% date_count: actual/365
CF_IR = TableLook(tenors, IRs, CF_dates)

figure(1)
plot(tenors, IRs, 'o'); hold on
plot(tenors, IRs); hold on
plot(CF_dates,CF_IR,'x')
x_left = min(tenors);
x_right = max(tenors);
y_top = 0.03;
y_btm = 0.015;
xlim([x_left x_right])
ylim([y_btm y_top])
xlabel('Tenor (yr)')
ylabel('Interest rate')

%% subfunction
function yy = TableLook(x,y,xx)
yy = [];
num_int = length(xx);
for k = 1:num_int
    xx_i = xx(k);
    for n = length(x)
        if xx_i < x(1)  || xx_i > x(n)
            error('Interpolation outside range')
        end 
        % sequential search
        i = 1;
        while(1)
            if xx_i <= x(i+1), break, end
            i = i+1;
        end
        % linear interpolation
        y_i = y(i) + (y(i+1)-y(i))/(x(i+1)-x(i))*(xx_i-x(i));
    end
    yy = [yy,y_i];
end
end
