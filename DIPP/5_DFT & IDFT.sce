clc;
clear all;
disp("By 302");
x = input ( "enter x seq " ) ;
h = input ( "enter h seq " ) ;
m = length ( x ) ;
n = length ( h ) ;
N = n +m -1;
x=[x,zeros(1,N-m)];
h=[h,zeros(1,N-n)];

f1 = fft( x )
disp("f1",f1)
f2 = fft( h )
f3 = f1 .* f2 ; // freq domain multiplication
f4 = ifft ( f3 )

disp ( f4 ," Convolution Sum Result DFT − IDFT method = ");
// f4 = real (f4)
subplot (3 ,1 ,1) ;
plot2d3 ( x );
xtitle ( " Input sequence" );
;
subplot (3 ,1 ,2) ;
plot2d3 (h );
xtitle ( " Impulse sequence" ) ;
subplot (3 ,1 ,3) ;
plot2d3 ( f4 );
xtitle ( " REsultant sequence ") ;
// Result
02
