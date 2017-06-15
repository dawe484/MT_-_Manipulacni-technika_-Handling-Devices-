
% Initialization
clear; close all; clc

global L1; %nyni lze ve skriptu použít promennou L1
L1 = 150; %[mm], toto nastaveni se udela na jedinem miste
global L2;
L2 = 74;
global L3;
L3 = 130;

global uhelAlfa;
uhelAlfa = abs(45);
global uhelBeta;
uhelBeta = 50;
global uhelGama;
uhelGama = abs(-30);
global uhelDelta;
uhelDelta = abs(-20);

J = CalcEndPoint(uhelAlfa, uhelGama, uhelDelta);

disp(J);

alfas = 1:4:180;
gamas = 1:4:60;
deltas = 1:4:80;
i =1;

result = 45*15*20;
points = zeros(result, 3);

for alfa = alfas
    for gama = gamas
        for delta = deltas
            points(i,:) = CalcEndPoint(alfa, gama, delta);
            i = i+1;
        end
    end
end

scatter3(-points(:,1),points(:,3),points(:,2),3,points(:,2))
xlabel('X')
ylabel('Z')
zlabel('Y')