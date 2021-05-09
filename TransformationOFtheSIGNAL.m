%Transformation of Signal
%Signal we going to transform
t=-5:0.01:5;
function y=x(t)
    y=2-t;
endfunction
givensignal=[zeros(1,500),ones(1,110),x(1:0.01:2),zeros(1,290)];
subplot(3,3,1);
plot(t,givensignal);
axis([-1 3 -2 2]);
xlabel('time');
ylabel('amplitude');
title('Given signal');


%TIme shifting
subplot(3,3,2);
plot(t+1,givensignal);
axis([-1 3 -2 2]);
xlabel('time');
ylabel('amplitude');
title('Time shifted by +1');
subplot(3,3,3);
plot(t-1,givensignal);
axis([-1 3 -2 2]);
xlabel('time');
ylabel('amplitude');
title('Time shifted by -1');

%time revesal
subplot(3,3,4);
plot(-t,givensignal);
axis([-2 2 -2 2]);
xlabel('time');
ylabel('amplitude');
title('time revesed signal');

%time scaling
subplot(3,3,5);
plot(2*t,givensignal);
axis([-1 5 -2 2]);
xlabel('time');
ylabel('amplitude');
title('timescaling by 2');
subplot(3,3,6);
plot((1/2)*t,givensignal);
axis([-1 5 -2 2]);
xlabel('time');
ylabel('amplitude');
title('timescaling by 1/2');

%amplitude scaling
subplot(3,3,7);
plot(t,2*givensignal);
axis([-1 5 -5 5]);
xlabel('time');
ylabel('amplitude');
title('amplitude scaling by 2');
subplot(3,3,8);
plot(t,(1/2)*givensignal);
axis([-1 5 -2 2]);
xlabel('time');
ylabel('amplitude');
title('amplitude scaling by 1/2');

%y=3*givensignal(t/3)+1
y=3*givensignal+1;
subplot(3,3,9);
plot(t/3,y);
axis([-3 3 -3 5]);
xlabel('time');
ylabel('amplitude');
title('y=3*givensignal(t/3)+1');