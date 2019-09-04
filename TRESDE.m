clear all
clc
close all

prompt = 'Introduzca el valor (grados) de la rotaciòn x (phi): '; %codigo de impresion compt e input
phiDeg = input (prompt);

promtp = 'Introduzca el valor (grados) de la rotaciòn en y (theta): ';
thetaDeg = input(prompt);

prompt = 'Introduzca el valor (grados) de la rotaciòn en z (psi): '; 
psiDeg = input(prompt); 


phiRad = deg2grad(phiDeg);
thetaRad = deg2grad(thetaDeg);
psiRad = deg2grad (psiDeg);


for t = 0 : 0.01 : phiRad 
    
   clf 

line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',2.5); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',2.5); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',2.5); %Establece el eje Y Azul 

grid on %cuadricula de la gráfica
view(120,30); %para salga en 3d


P0 = [0 0 0]; %[Punto_inicial Punto_Final]
P1 = [7 0 0]; %[Punto_inicial Punto_Final]
P2 = [7 3 0]; %[Punto_inicial Punto_Final]
P3 = [0 3 0]; %[Punto_inicial Punto_Final]
P4 = [0 3 2]; %[Punto_inicial Punto_Final]
P5 = [0 0 2]; %[Punto_inicial Punto_Final]
P6 = [7 0 2]; %[Punto_inicial Punto_Final]
P7 = [7 3 2]; %[Punto_inicial Punto_Final]

line ([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de abajo
line ([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de abajo
line ([P2(1) P3(1)],[P2(2) P3(2)],[P2(3) P3(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P3(1) P0(1)],[P3(2) P0(2)],[P3(3) P0(3)], 'color', [0 0 0], 'linewidth',3); %''

line ([P4(1) P5(1)],[P4(2) P5(2)],[P4(3) P5(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de arriba
line ([P5(1) P6(1)],[P5(2) P6(2)],[P5(3) P6(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P6(1) P7(1)],[P6(2) P7(2)],[P6(3) P7(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P7(1) P4(1)],[P7(2) P4(2)],[P7(3) P4(3)], 'color', [0 0 0], 'linewidth',3); %''

line ([P0(1) P5(1)],[P0(2) P5(2)],[P0(3) P5(3)], 'color', [0 0 0], 'linewidth',3); %linea de cruzada
line ([P3(1) P4(1)],[P3(2) P4(2)],[P3(3) P4(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P1(1) P6(1)],[P1(2) P6(2)],[P1(3) P6(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P2(1) P7(1)],[P2(2) P7(2)],[P2(3) P7(3)], 'color', [0 0 0], 'linewidth',3); %''


Rx = [1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];

P0x = Rx*P0';
P1x = Rx*P1';
P2x = Rx*P2';
P3x = Rx*P3';
P4x = Rx*P4';
P5x = Rx*P5';
P6x = Rx*P6';
P7x = Rx*P7';


line ([P0x(1) P1x(1)],[P0x(2) P1x(2)],[P0x(3) P1x(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de abajo
line ([P1x(1) P2x(1)],[P1x(2) P2x(2)],[P1x(3) P2x(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de abajo
line ([P2x(1) P3x(1)],[P2x(2) P3x(2)],[P2x(3) P3x(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P3x(1) P0x(1)],[P3x(2) P0x(2)],[P3x(3) P0x(3)], 'color', [0 0 0], 'linewidth',3); %''

line ([P4x(1) P5x(1)],[P4x(2) P5x(2)],[P4x(3) P5x(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de arriba
line ([P5x(1) P6x(1)],[P5x(2) P6x(2)],[P5x(3) P6x(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P6x(1) P7x(1)],[P6x(2) P7x(2)],[P6x(3) P7x(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P7x(1) P4x(1)],[P7x(2) P4x(2)],[P7x(3) P4x(3)], 'color', [0 0 0], 'linewidth',3); %''

line ([P0x(1) P5x(1)],[P0x(2) P5x(2)],[P0x(3) P5x(3)], 'color', [0 0 0], 'linewidth',3); %linea de cruzada
line ([P3x(1) P4x(1)],[P3x(2) P4x(2)],[P3x(3) P4x(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P1x(1) P6x(1)],[P1x(2) P6x(2)],[P1x(3) P6x(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P2x(1) P7x(1)],[P2x(2) P7x(2)],[P2x(3) P7x(3)], 'color', [0 0 0], 'linewidth',3); %''



pause (0.01);

end





%inicio de y

for t = 0 : 0.01 : thetaRad 
    
   clf

line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',2.5); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',2.5); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',2.5); %Establece el eje Y Azul 

grid on %cuadricula de la gráfica
view(120,30); %para salga en 3d


P0 = P0x; %[Punto_inicial Punto_Final]
P1 = P1x; %[Punto_inicial Punto_Final]
P2 = P2x; %[Punto_inicial Punto_Final]
P3 = P3x; %[Punto_inicial Punto_Final]
P4 = P4x; %[Punto_inicial Punto_Final]
P5 = P5x; %[Punto_inicial Punto_Final]
P6 = P6x; %[Punto_inicial Punto_Final]
P7 = P7x; %[Punto_inicial Punto_Final]


Ry = [cos(t) 0 sin(t); 0 1 0; -sin(t) 0 cos(t)];

P0y = Ry*P0;
P1y = Ry*P1;
P2y = Ry*P2;
P3y = Ry*P3;
P4y = Ry*P4;
P5y = Ry*P5;
P6y = Ry*P6;
P7y = Ry*P7;


line ([P0y(1) P1y(1)],[P0y(2) P1y(2)],[P0y(3) P1y(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de abajo
line ([P1y(1) P2y(1)],[P1y(2) P2y(2)],[P1y(3) P2y(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de abajo
line ([P2y(1) P3y(1)],[P2y(2) P3y(2)],[P2y(3) P3y(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P3y(1) P0y(1)],[P3y(2) P0y(2)],[P3y(3) P0y(3)], 'color', [0 0 0], 'linewidth',3); %''

line ([P4y(1) P5y(1)],[P4y(2) P5y(2)],[P4y(3) P5y(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de arriba
line ([P5y(1) P6y(1)],[P5y(2) P6y(2)],[P5y(3) P6y(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P6y(1) P7y(1)],[P6y(2) P7y(2)],[P6y(3) P7y(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P7y(1) P4y(1)],[P7y(2) P4y(2)],[P7y(3) P4y(3)], 'color', [0 0 0], 'linewidth',3); %''

line ([P0y(1) P5y(1)],[P0y(2) P5y(2)],[P0y(3) P5y(3)], 'color', [0 0 0], 'linewidth',3); %linea de cruzada
line ([P3y(1) P4y(1)],[P3y(2) P4y(2)],[P3y(3) P4y(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P1y(1) P6y(1)],[P1y(2) P6y(2)],[P1y(3) P6y(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P2y(1) P7y(1)],[P2y(2) P7y(2)],[P2y(3) P7y(3)], 'color', [0 0 0], 'linewidth',3); %''



pause (0.01);

end






%inicio de z

for t = 0 : 0.01 : psiRad 
    
   clf

line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',2.5); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',2.5); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',2.5); %Establece el eje Y Azul 


view(120,30); %para salga en 3d
grid on %cuadricula de la gráfica


P0 = P0y; %[Punto_inicial Punto_Final]
P1 = P1y; %[Punto_inicial Punto_Final]
P2 = P2y; %[Punto_inicial Punto_Final]
P3 = P3y; %[Punto_inicial Punto_Final]
P4 = P4y; %[Punto_inicial Punto_Final]
P5 = P5y; %[Punto_inicial Punto_Final]
P6 = P6y; %[Punto_inicial Punto_Final]
P7 = P7y; %[Punto_inicial Punto_Final]


Rz = [cos(t) -sin(t) 0; sin(t) cos(t) 0; 0 0 1];


P0z = Rz*P0;
P1z = Rz*P1;
P2z = Rz*P2;
P3z = Rz*P3;
P4z = Rz*P4;
P5z = Rz*P5;
P6z = Rz*P6;
P7z = Rz*P7;


line ([P0z(1) P1z(1)],[P0z(2) P1z(2)],[P0z(3) P1z(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de abajo
line ([P1z(1) P2z(1)],[P1z(2) P2z(2)],[P1z(3) P2z(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de abajo
line ([P2z(1) P3z(1)],[P2z(2) P3z(2)],[P2z(3) P3z(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P3z(1) P0z(1)],[P3z(2) P0z(2)],[P3z(3) P0z(3)], 'color', [0 0 0], 'linewidth',3); %''

line ([P4z(1) P5z(1)],[P4z(2) P5z(2)],[P4z(3) P5z(3)], 'color', [0 0 0], 'linewidth',3); %cuadro de arriba
line ([P5z(1) P6z(1)],[P5z(2) P6z(2)],[P5z(3) P6z(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P6z(1) P7z(1)],[P6z(2) P7z(2)],[P6z(3) P7z(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P7z(1) P4z(1)],[P7z(2) P4z(2)],[P7z(3) P4z(3)], 'color', [0 0 0], 'linewidth',3); %''

line ([P0z(1) P5z(1)],[P0z(2) P5z(2)],[P0z(3) P5z(3)], 'color', [0 0 0], 'linewidth',3); %linea de cruzada
line ([P3z(1) P4z(1)],[P3z(2) P4z(2)],[P3z(3) P4z(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P1z(1) P6z(1)],[P1z(2) P6z(2)],[P1z(3) P6z(3)], 'color', [0 0 0], 'linewidth',3); %''
line ([P2z(1) P7z(1)],[P2z(2) P7z(2)],[P2z(3) P7z(3)], 'color', [0 0 0], 'linewidth',3); %''



pause (0.001);

end

