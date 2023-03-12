//Circular Convolution
clc;
clf;
clear all;

disp("By 302 ");

g =input("Enter x sequence: ");
h =input("Enter h sequence: ");

n1 = length(g);
n2 = length(h);
n = max(n1,n2);
n3 = max(n1,n2);
n3 = n1-n2;

if(n3 > 0)
    h = [h, zeros(1,n3)];
else
    g = [g, zeros(1, -n3)];
end

for p = 1:n
    y (p) = 0;
    for q = 1:n
        j=p-q+1;
        if(j<=0)
            j= n + j;
        end
        y(p) = [y(p) + g(q) * h(j)];
    end
end
disp(y);
subplot(3,1,1);
plot(y);
