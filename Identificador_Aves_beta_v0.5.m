%
%  ---------------------------------
%  Proyecto DSP : : : : 2011-2
%  Grupo: Peraldo-Romano-Ku-Calderón
%  ---------------------------------
%  version beta 0.5
%  ----------------

clear all;
close all;
fsa = 44100;    % frecuencia de muestreo usada con el soundsc

[ave,avef] = leer('wood (2)');   % señal de entrada

max_t = 1.939930207415205e+03;   % constantes de normalización
max_f = 21e+07;                  % tanto para tiempo como para freq
% N1 = 999999;
% U1 = fsa/N1;                   % datos para el stem
% F1 = -fsa/2:U1:fsa/2-U1;

[g1,g1f] = leer('gallito (1)');     % se leen las señales de nuestra
[g2,g2f] = leer('gallito (2)');     % base de datos, obteniendo
[g3,g3f] = leer('gallito (3)');     % la correspondiente representación
[g4,g4f] = leer('gallito (4)');     % en tiempo(ej. g2) y en 
[g5,g5f] = leer('gallito (5)');     % frecuencia (ej. g2f)
[g6,g6f] = leer('gallito (6)');     
[g7,g7f] = leer('gallito (7)');
[g8,g8f] = leer('gallito (8)');     % 10 señales para el gallito
[g9,g9f] = leer('gallito (9)');     % de las rocas
[g10,g10f] = leer('gallito (10)');

[p1,p1f] = leer('dove (1)');
[p2,p2f] = leer('dove (2)');
[p3,p3f] = leer('dove (3)');        % 6 señales para la cuculí
[p4,p4f] = leer('dove (4)');
[p5,p5f] = leer('dove (5)');
[p6,p6f] = leer('dove (6)');

[c1,c1f] = leer('caracara (1)');
[c2,c2f] = leer('caracara (2)');
[c3,c3f] = leer('caracara (3)');
[c4,c4f] = leer('caracara (4)');
[c5,c5f] = leer('caracara (5)');
[c6,c6f] = leer('caracara (6)');
[c7,c7f] = leer('caracara (7)');
[c8,c8f] = leer('caracara (8)');
[c9,c9f] = leer('caracara (9)');    % 17 señales para la caracara
[c10,c10f] = leer('caracara (10)'); % de cabeza amarilla
[c11,c11f] = leer('caracara (11)');
[c12,c12f] = leer('caracara (12)');
[c13,c13f] = leer('caracara (13)');
[c14,c14f] = leer('caracara (14)');
[c15,c15f] = leer('caracara (15)');
[c16,c16f] = leer('caracara (16)');
[c17,c17f] = leer('caracara (17)');

[t1,t1f] = leer('wood (1)');
[t2,t2f] = leer('wood (2)');
[t3,t3f] = leer('wood (3)');
[t4,t4f] = leer('wood (4)');
[t5,t5f] = leer('wood (5)');
[t6,t6f] = leer('wood (6)');
[t7,t7f] = leer('wood (7)');
[t8,t8f] = leer('wood (8)');
[t9,t9f] = leer('wood (9)');      % 19 señales para el
[t10,t10f] = leer('wood (10)');   % trepador andino
[t11,t11f] = leer('wood (11)');
[t12,t12f] = leer('wood (12)');
[t13,t13f] = leer('wood (13)');
[t14,t14f] = leer('wood (14)');
[t15,t15f] = leer('wood (15)');
[t16,t16f] = leer('wood (16)');
[t17,t17f] = leer('wood (17)');
[t18,t18f] = leer('wood (18)');
[t19,t19f] = leer('wood (19)');

% y5 = xcorr(avef,g6f);
% stem(F1,fftshift(abs(y5)));   prueba del stem

yg1 = max(abs(xcorr(avef,g1f)));
yg2 = max(abs(xcorr(avef,g2f)));    % a continuación se calcula
yg3 = max(abs(xcorr(avef,g3f)));    % la correlación cruzada
yg4 = max(abs(xcorr(avef,g4f)));    % de la señal desconocida
yg5 = max(abs(xcorr(avef,g5f)));    % con la base de datos
yg6 = max(abs(xcorr(avef,g6f)));    % en frecuencia . . .
yg7 = max(abs(xcorr(avef,g7f)));
yg8 = max(abs(xcorr(avef,g8f)));
yg9 = max(abs(xcorr(avef,g9f)));
yg10 = max(abs(xcorr(avef,g10f)));

yp1 = max(abs(xcorr(avef,p1f)));
yp2 = max(abs(xcorr(avef,p2f)));
yp3 = max(abs(xcorr(avef,p3f)));
yp4 = max(abs(xcorr(avef,p4f)));
yp5 = max(abs(xcorr(avef,p5f)));
yp6 = max(abs(xcorr(avef,p6f)));

yc1 = max(abs(xcorr(avef,c1f)));
yc2 = max(abs(xcorr(avef,c2f)));
yc3 = max(abs(xcorr(avef,c3f)));
yc4 = max(abs(xcorr(avef,c4f)));
yc5 = max(abs(xcorr(avef,c5f)));
yc6 = max(abs(xcorr(avef,c6f)));
yc7 = max(abs(xcorr(avef,c7f)));
yc8 = max(abs(xcorr(avef,c8f)));
yc9 = max(abs(xcorr(avef,c9f)));
yc10 = max(abs(xcorr(avef,c10f)));
yc11 = max(abs(xcorr(avef,c11f)));
yc12 = max(abs(xcorr(avef,c12f)));
yc13 = max(abs(xcorr(avef,c13f)));
yc14 = max(abs(xcorr(avef,c14f)));
yc15 = max(abs(xcorr(avef,c15f)));
yc16 = max(abs(xcorr(avef,c16f)));
yc17 = max(abs(xcorr(avef,c17f)));

yt1 = max(abs(xcorr(avef,t1f)));
yt2 = max(abs(xcorr(avef,t2f)));
yt3 = max(abs(xcorr(avef,t3f)));
yt4 = max(abs(xcorr(avef,t4f)));
yt5 = max(abs(xcorr(avef,t5f)));
yt6 = max(abs(xcorr(avef,t6f)));
yt7 = max(abs(xcorr(avef,t7f)));
yt8 = max(abs(xcorr(avef,t8f)));
yt9 = max(abs(xcorr(avef,t9f)));
yt10 = max(abs(xcorr(avef,t10f)));
yt11 = max(abs(xcorr(avef,t11f)));
yt12 = max(abs(xcorr(avef,t12f)));
yt13 = max(abs(xcorr(avef,t13f)));
yt14 = max(abs(xcorr(avef,t14f)));
yt15 = max(abs(xcorr(avef,t15f)));
yt16 = max(abs(xcorr(avef,t16f)));
yt17 = max(abs(xcorr(avef,t17f)));
yt18 = max(abs(xcorr(avef,t18f)));
yt19 = max(abs(xcorr(avef,t19f)));


xg1 = max(abs(xcorr(ave,g1)));
xg2 = max(abs(xcorr(ave,g2)));    % . . . y en tiempo
xg3 = max(abs(xcorr(ave,g3)));    % obteniendo el módulo de
xg4 = max(abs(xcorr(ave,g4)));    % la correlación
xg5 = max(abs(xcorr(ave,g5)));    % y calculando el valor
xg6 = max(abs(xcorr(ave,g6)));    % máximo
xg7 = max(abs(xcorr(ave,g7)));
xg8 = max(abs(xcorr(ave,g8)));
xg9 = max(abs(xcorr(ave,g9)));
xg10 = max(abs(xcorr(ave,g10)));

xp1 = max(abs(xcorr(ave,p1)));
xp2 = max(abs(xcorr(ave,p2)));
xp3 = max(abs(xcorr(ave,p3)));
xp4 = max(abs(xcorr(ave,p4)));
xp5 = max(abs(xcorr(ave,p5)));
xp6 = max(abs(xcorr(ave,p6)));

xc1 = max(abs(xcorr(ave,c1)));
xc2 = max(abs(xcorr(ave,c2)));
xc3 = max(abs(xcorr(ave,c3)));
xc4 = max(abs(xcorr(ave,c4)));
xc5 = max(abs(xcorr(ave,c5)));
xc6 = max(abs(xcorr(ave,c6)));
xc7 = max(abs(xcorr(ave,c7)));
xc8 = max(abs(xcorr(ave,c8)));
xc9 = max(abs(xcorr(ave,c9)));
xc10 = max(abs(xcorr(ave,c10)));
xc11 = max(abs(xcorr(ave,c11)));
xc12 = max(abs(xcorr(ave,c12)));
xc13 = max(abs(xcorr(ave,c13)));
xc14 = max(abs(xcorr(ave,c14)));
xc15 = max(abs(xcorr(ave,c15)));
xc16 = max(abs(xcorr(ave,c16)));
xc17 = max(abs(xcorr(ave,c17)));

xt1 = max(abs(xcorr(ave,t1)));
xt2 = max(abs(xcorr(ave,t2)));
xt3 = max(abs(xcorr(ave,t3)));
xt4 = max(abs(xcorr(ave,t4)));
xt5 = max(abs(xcorr(ave,t5)));
xt6 = max(abs(xcorr(ave,t6)));
xt7 = max(abs(xcorr(ave,t7)));
xt8 = max(abs(xcorr(ave,t8)));
xt9 = max(abs(xcorr(ave,t9)));
xt10 = max(abs(xcorr(ave,t10)));
xt11 = max(abs(xcorr(ave,t11)));
xt12 = max(abs(xcorr(ave,t12)));
xt13 = max(abs(xcorr(ave,t13)));
xt14 = max(abs(xcorr(ave,t14)));
xt15 = max(abs(xcorr(ave,t15)));
xt16 = max(abs(xcorr(ave,t16)));
xt17 = max(abs(xcorr(ave,t17)));
xt18 = max(abs(xcorr(ave,t18)));
xt19 = max(abs(xcorr(ave,t19)));

% procedemos a calcular el promedio de todos los resultados anteriores
% y utilizamos la constante de normalización para tratar con valores
% coherentes comparables para cada especie de ave

% promedios en tiempo:
mean_g = (xg1+xg2+xg3+xg4+xg5+xg6+xg7+xg8+xg9+xg10)/10/max_t;
mean_c = (xc1+xc2+xc3+xc4+xc5+xc6+xc7+xc8+xc9+xc10+xc11+xc12+xc13+xc14+xc15+xc16+xc17)/17/max_t;
mean_p = (xp1+xp2+xp3+xp4+xp5+xp6)/6/max_t;
mean_t = (xt1+xt2+xt3+xt4+xt5+xt6+xt7+xt8+xt9+xt10+xt11+xt12+xt13+xt14+xt15+xt16+xt17+xt18+xt19)/19/max_t;

% promedios en frecuencia:
mean_fg = (yg1+yg2+yg3+yg4+yg5+yg6+yg7+yg8+yg9+yg10)/10/max_f;
mean_fc = (yc1+yc2+yc3+yc4+yc5+yc6+yc7+yc8+yc9+yc10+yc11+yc12+yc13+yc14+yc15+yc16+yc17)/17/max_f;
mean_fp = (yp1+yp2+yp3+yp4+yp5+yp6)/6/max_f;
mean_ft = (yt1+yt2+yt3+yt4+yt5+yt6+yt7+yt8+yt9+yt10+yt11+yt12+yt13+yt14+yt15+yt16+yt17+yt18+yt19)/19/max_f;

% suma de ambos promedios para una especie:
suma_g = mean_g+mean_fg;
suma_p = mean_p+mean_fp;
suma_c = mean_c+mean_fc;
suma_t = mean_t+mean_ft;

[valor,index] = max([suma_g suma_p suma_c suma_t]);
% de acuerdo con la suma de promedios en tiempo y frecuencia,
% se obtiene el valor máximo, el cual representa la especie
% con mayor parecido ya sea temporal o frecuencial


if index==1
    imshow('rupicola.jpg');   % dicha ave es
elseif index==2               % mostrada con una foto
    imshow('paloma.jpg');     % de la especie con la que
elseif index==3               % ha sido identificada
    imshow('caracara.jpg');
elseif index==4
    imshow('trepador.jpg');
end







