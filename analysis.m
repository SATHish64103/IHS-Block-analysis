function [out_buff1, out_buff2, t] = analysis(avg_data,buff_data,flow,fhigh)
% avg_data = averaged data ASCII filename
% buff_data = buffered data ASCII filename
% flow = low frequency cutoff (Hz)
% fhigh = high frequency cutoff (Hz)

% For further queries contact at sathish.sreeni58@gmail.com

buffer_data = readmatrix(buff_data);
grand_avg = readmatrix(avg_data);

nbits = 12;
t = grand_avg(:,2);
vref_buff1 = (((grand_avg(1,6)*1e5).*(2^nbits))/grand_avg(1,5));
vref_buff2 = (((grand_avg(1,8)*1e5).*(2^nbits))/grand_avg(1,7));
buff1_indx = [1:2:width(buffer_data)];
buff2_indx = [2:2:width(buffer_data)];

[b,a] = fir1(64,[flow, fhigh]/(40000/2));

buff1 = buffer_data(:,buff1_indx);
buff2 = buffer_data(:,buff2_indx);

buff1 = ((buff1*vref_buff1)/(2^nbits))/1e5;
buff2 = ((buff2*vref_buff1)/(2^nbits))/1e5;

buff1 = sum(buff1,2);
buff2 = sum(buff2,2);

out_buff1 = conv(buff1,b,"same");
out_buff2 = conv(buff2,b,"same");