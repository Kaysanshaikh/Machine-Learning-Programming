//Linear Convolution
clc;
clf;
clear all;
disp("By 302 ");
x = input("Enter the value of x[n] : ");
h = input("Enter the value of h[n]:: ");

n1 = length(x);
n2 = length(h);
n = n1 + n2 -1;

subplot(3,1,1);
plot2d3(x);
xlabel("n");
ylabel("x[n]");
title("Graph of x[n] ");

subplot(3,1,2);
plot2d3(h);
xlabel("n");
ylabel("h[n]");
title("Graph of h[n] ");

x = [x, zeros(1,n-n1)];
h = [h, zeros(1,n-n2)];

for i = 1:n;
    conv_sum = 0;
    for j = 1:i;
        if(((i - j + 1)< = n1) & (j < = n2))
            conv_sum = conv_sum + x(j) * h(i - j + 1);
        end
        y(i)= conv_sum;
    end
end
disp(y);

subplot(3,1,3);
plot2d3(y);
xlabel("n");
ylabel("y[n]");
title("Graph of h[n] ");
