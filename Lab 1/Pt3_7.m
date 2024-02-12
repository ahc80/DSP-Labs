figure;
n = linspace(0, 2*pi, 50);
x = sin(n);
subplot(2, 3, 2);
stem(n, x);
title('Input Signal Sinusoid');

a=system1(3*x);
subplot(2, 3, 4);
stem(n, a);
title('System 1 Output');

b=system2(3*x);
subplot(2, 3, 5);
stem(n, b);
title('System 2 Output');

c=system3(3*x);
subplot(2, 3, 6);
stem(n, c);
title('System 3 Output');

figure;
k = -15:15;
s = (k == 0) - (k == 5);
subplot(3, 3, 2);
stem(k, s);
title('Input Signal');

d=system1(s);
subplot(3, 3, 4);
stem(k, d);
title('System 1 Output');

e=system2(s);
subplot(3, 3, 5);
stem(k, e);
title('System 2 Output');

f=system3(s);
subplot(3, 3, 6);
stem(k, f);
title('System 3 Output');

r = (k == 2) - (k == 7);
g=system1(r);
subplot(3, 3, 7);
stem(k, g);
title('System 1 Output Shifted Right 2');

h=system2(r);
subplot(3, 3, 8);
stem(k, h);
title('System 2 Output Shifted Right 2');

i=system3(r);
subplot(3, 3, 9);
stem(k, i);
title('System 3 Output Shifted Right 2');