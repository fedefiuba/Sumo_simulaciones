//**********************************************************************************
// Ejemplo de básico de Kalman. Se modeliza el ejemplo Masa-Resorte-Amortiguador

// Se toman dos variables de estados,x1 y x2, es decir, la trayectoria y la velocidad
//*************************************************************************************

clear all
clc

//****************************************
//Respuesta de un Sistema Lineal
//****************************************

A= [0 1; -1 -0.5];B=[0 ; 10];

C = [1 0]; D = 0

//Vector de tiempo
t=0:0.05:30;

//Definición de Sistema Lineal
H_2do_orden=syslin('c',A,B,C)

//Respuesta al escalón de un sistema de Primer orden en Lazo Abierto
plot(t',csim('step',t,H_2do_orden)','b')
xlabel( " Tiempo " ) ;
ylabel(" Desplazamiento " ) ;
title("Desplazamiento Masa-Resorte-Amort" )


figure

// Salida del sistema con ruido
v=0.5*rand(t,"normal");
[m,x_estado]=csim('step',t,H_2do_orden)
//y = m+v;
y = x_estado(1,:)+v // Tomo al estado X1 que es la trayectoria (salida)
vel = x_estado(2,:)+v // Tomo al estado X2 que es la velocidad


//************************
//Matrices de Covarianza
Q= [2 0 ; 0 2];
R=[0.05]

// Vector x y matriz P
x = zeros(2, length(t));
P = zeros(2,2,length(t));

//***************************************************************
// Se inicializa al vector de estados y a la Matriz de Covarianza
x(:,1) = [0; 1]; 
P(:,:,1)=[1.5 0 ; 0 1];

//*********************
// Referencia
u = ones(1,length(t))

//************************
//Iteración del Algoritmo

for(i = 2:length(t))
    
//*************************
//Predección

xkp= A*x(:,i-1)+B*u(:,i-1);
Pkp = A*P(:,:,i-1)*A' + Q;


//**************************
//Ganancia de Kalman

K = (Pkp*C')*inv(C*Pkp*C' + R);

//**************************
// Actualización

x(:,i) = xkp + K*(y(i) - C*xkp);
P(:,:,i) = Pkp - K*C*Pkp;

end

//Gráficos de desplazamiento
plot(t',y','r')
plot(t,x(1,:),"color","black");
xlabel( " Tiempo " ) ;
ylabel(" Desplazamiento " ) ;
title("Desplazamiento Masa-Resorte-Amort con KALMAN" )



