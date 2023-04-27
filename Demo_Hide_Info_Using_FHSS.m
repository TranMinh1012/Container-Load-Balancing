% Trải phổ nhảy tần - Frequency Hopping Spread Spectrum
clc;
clear all;
close all;

% Chuyển đổi chuỗi "ptit<3" thành binary
str = 'ptit<3';
bin_str = dec2bin(str, 8); % Chuyển đổi từng ký tự thành 8-bit binary
s = reshape(bin_str.' - '0', 1, []); % Chuyển chuỗi nhị phân thành vector số nguyên (vector hàng). Ví dụ: 110101 -> [1 1 0 1 0 1]

N = length(s);
signal=[]; 
carrier=[];
T=180;
t=0:2*pi/(T-1):2*pi; % Tạo T samples(giá trị của hàm cosine tại một thời điểm cụ thể) cho một cosine. Cosine là một tín hiệu cơ bản được sử dụng để tạo ra tín hiệu sóng mang. 

subplot(5,1,1); % Tạo ra một lưới ô đồ thị với 5 hàng và 1 cột, và chọn ô đồ thị ở vị trí thứ nhất để hiển thị đồ thị.
stem(s); % Hiển thị đồ thị stem (biểu đồ cây) của tín hiệu nhị phân 's'. Các giá trị của dữ liệu được hiển thị dưới dạng các đường thẳng thẳng đứng (stem).
set(gca,'XTick',1:N,'XLim',[0.66 N+0.33]);    % Đặt giới hạn trục và tỷ lệ cho biểu đồ
title('Binary information');
ylabel('Amplitude(V)');
xlabel('Time(s)');
text(0.5, 1.5, ['Original String: ', str]); % Thêm chuỗi ban đầu vào plot

% Tạo ra tín hiệu điều chế bằng phương pháp NRZ (Non-Return-to-Zero) theo dạng Polar, dựa trên chuỗi dữ liệu đầu vào s.
for k=1:N
     if s(1,k)==0
         sig=-ones(1,T);    % Nếu là bit 0: Tín hiệu sẽ được tạo ra bằng cách sử dụng T giá trị bằng -1, tương ứng với chuỗi MINUS ONES
     else
         sig=ones(1,T);     % Nếu là bit 1: Tín hiệu sẽ được tạo ra bằng cách sử dụng T giá trị bằng 1, tương ứng với chuỗi ONES.
     end
     c=cos(t);  % Tạo tín hiệu cosin được sử dụng làm tín hiệu mang (carrier signal) cho tín hiệu dữ liệu được điều chế.
     % Lưu tín hiệu dữ liệu và tín hiệu mang vào các biến
     carrier=[carrier c]; 
     signal=[signal sig];
end

subplot(5,1,2);
stairs(signal); % Vẽ biểu đồ bậc thang của signal 
set(gca,'XTick',0:T:N*T,'XLim',[-60 N*T+60],'YLim',[-1.5 1.5]);
title('Original Bit Sequence');
ylabel('Amplitude(V)');
xlabel('Time(s)');

% Điều chế sử dụng BPSK

bpsk_sig=signal.*carrier;   % Tín hiệu nhị phân được lưu trữ trong biến signal được nhân với sóng mang cosine (được lưu trữ trong biến carrier)
subplot(5,1,3); 
plot(bpsk_sig); % Vẽ biểu đồ của tín hiệu BPSK modulate 
set(gca,'XTick',0:T:N*T,'XLim',[-60 N*T+60],'YLim',[-1.5 1.5]);
title('BPSK Modulated Signal');
ylabel('Amplitude(V)');
xlabel('Time(s)');

% Chuẩn bị 6 tần số sóng mang mới
% Tính toán và lưu trữ 6 tập giá trị của góc pha (t1, t2, t3, t4, t5, t6) cho mỗi tần số mang (carrier frequency) tương ứng. 
% Sau đó, mỗi tập giá trị được sử dụng để tạo ra chuỗi giá trị cosin (c1, c2, c3, c4, c5, c6) tương ứng với tần số mang đó.
% Chuỗi giá trị cosin này sẽ được sử dụng để modulate tín hiệu đầu vào trong quá trình truyền tín hiệu. 

t1=0:2*pi/8:2*pi;
t2=0:2*pi/9:2*pi;
t3=0:2*pi/17:2*pi;

t4=0:2*pi/35:2*pi;
t5=0:2*pi/89:2*pi;
t6=0:2*pi/179:2*pi;
c1=cos(t1);
c1=[c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1];
c2=cos(t2);
c2=[c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2] ;
c3=cos(t3);
c3=[c3 c3 c3 c3 c3 c3 c3 c3 c3 c3] ;
c4=cos(t4);
c4=[c4 c4 c4 c4 c4];
c5=cos(t5);
c5=[c5 c5];
c6=cos(t6);

% Tạo ra một tín hiệu trải rộng bằng cách chuyển đổi tần số ngẫu nhiên trong tập 6 tần số được chuẩn bị trước đó 
% và sau đó ghép các tín hiệu tương ứng với các tần số này lại với nhau.

spread_signal=[];
spread=[];
for n=1:N
    c=randi([1 6],1,1);

    spread=[spread c];
    switch(c)
        case(1)
            spread_signal=[spread_signal c1];
        case(2)
            spread_signal=[spread_signal c2];
        case(3)
            spread_signal=[spread_signal c3];
        case(4)
            spread_signal=[spread_signal c4];
        case(5)       
            spread_signal=[spread_signal c5];
        case(6)
            spread_signal=[spread_signal c6];
    end
end

% Hiển thị lên màn hình và vẽ biểu đồ

display('Spreading Code :');
display(spread);
subplot(5,1,4);
plot(1:N*T,spread_signal);
set(gca,'XTick',0:T:N*T,'XLim',[-60 N*T+60],'YLim',[-1.5 1.5]);
title('Spreading Code with 6 frequencies');
ylabel('Amplitude(V)');
xlabel('Time(s)');

% Tạo ra tín hiệu frequency hopped spread spectrum.

freq_hopped_sig=bpsk_sig.*spread_signal; % Nhân giữa tín hiệu BPSK 'bpsk_sig' với spreading code 'spread_signal' để tạo ra tín hiệu frequency hopped spread spectrum 'freq_hopped_sig'
subplot(5,1,5);
plot(1:N*T,freq_hopped_sig); % Vẽ biểu đồ
set(gca,'XTick',0:T:N*T,'XLim',[-60 N*T+60],'YLim',[-1.5 1.5]);
title('Frequency Hopped Spread Spectrum Signal');
ylabel('Amplitude(V)');
xlabel('Time(s)');

% Phía nhận

figure;
subplot(3,1,1);
plot(1:N*T,freq_hopped_sig);
set(gca,'XTick',0:T:N*T,'XLim',[-60 N*T+60],'YLim',[-1.5 1.5]);
title('Frequency Hopped Spread Spectrum Signal');
ylabel('Amplitude(V)');
xlabel('Time(s)');

% Giải điều chế (demodulation) tín hiệu BPSK đã được truyền qua kênh truyền và được truyền về đến bộ thu.

demod_psk=freq_hopped_sig.*spread_signal;
subplot(3,1,2);
plot(demod_psk);
set(gca,'XTick',0:T:N*T,'XLim',[-60 N*T+60],'YLim',[-1.5 1.5]);
title('Demodulated BPSK Signal');
ylabel('Amplitude(V)');
xlabel('Time(s)');

% Demodulated Binary Signal

demod_sig=[];
for j=0:T:N*T-1
     if demod_psk(j+1)<0
         sig=-ones(1,T);
     else
         sig=ones(1,T);
     end
     demod_sig=[demod_sig sig];
end
subplot(3,1,3);
stairs(demod_sig);

set(gca,'XTick',0:T:N*T,'XLim',[-60 N*T+60],'YLim',[-1.5 1.5]);
title('Demodulated Binary Signal');
ylabel('Amplitude(V)');
xlabel('Time(s)');

% Convert demod_sig to binary string
binary_string = '';
for i = 1:T:length(demod_sig)
    if demod_sig(i) == 1
        binary_string = [binary_string, '1'];
    else
        binary_string = [binary_string, '0'];
    end
end

% Convert binary string to ASCII string
ascii_string = char(bin2dec(reshape(binary_string, 8, []).')).';

% Add annotation with ASCII string
annotation('textbox', [0.15, 0.00001, 0.7, 0.1], 'String', ['Demodulated String: ', ascii_string], 'EdgeColor', 'none', 'FontSize', 10);