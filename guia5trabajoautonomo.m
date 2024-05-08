

load census; 

p1 = polyfit(cdate,pop,1); 
p2 = polyfit(cdate,pop,2);
p3 = polyfit(cdate,pop,3); 

scatter(cdate, pop); 
hold on;
fplot(@(x) polyval(p1,x), [min(cdate), max(cdate)], 'r'); 
fplot(@(x) polyval(p2,x), [min(cdate), max(cdate)], 'g'); 
fplot(@(x) polyval(p3,x), [min(cdate), max(cdate)], 'b'); 
hold off;
legend('Datos', 'Ajuste Lineal', 'Ajuste Cuadrático', 'Ajuste Cúbico');
xlabel('Año');
ylabel('Población');
title('Ajuste Polinomial de Curvas a Datos de Población de EE.UU');

y1 = polyval(p1, cdate); 
y2 = polyval(p2, cdate);
y3 = polyval(p3, cdate); 

mse1 = mean((pop - y1).^2); 
mse2 = mean((pop - y2).^2); 
mse3 = mean((pop - y3).^2); 


fprintf('Error cuadrático medio para ajuste grado 1: %.2f\n', mse1);
fprintf('Error cuadrático medio para ajuste grado 2: %.2f\n', mse2);
fprintf('Error cuadrático medio para ajuste grado 3: %.2f\n', mse3);