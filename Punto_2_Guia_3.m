
x = linspace(-10, 10, 40);

y1 = abs(x); 
y2 = sqrt(abs(x)); 
y3 = cos(x); 
y4 = exp(x);
y5 = log10(abs(x)+1); 

figure;
subplot(3, 2, 1); plot(x, y1, 'r'); title('|X|'); grid on;
xlabel('X'); ylabel('Y');
subplot(3, 2, 2); plot(x, y2, 'g'); title('√|X|'); grid on;
xlabel('X'); ylabel('Y');
subplot(3, 2, 3); plot(x, y3, 'b'); title('cos(X)'); grid on;
xlabel('X'); ylabel('Y');
subplot(3, 2, 4); plot(x, real(y4), 'm'); title('e^x'); grid on; 
xlabel('X'); ylabel('Y');
subplot(3, 2, 5); plot(x, y5, 'c'); title('Log10(x)'); grid on;
xlabel('X'); ylabel('Y');
