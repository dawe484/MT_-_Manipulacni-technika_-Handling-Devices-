% Initialization
clear; close all; clc

%zavedeme libovoln� po�et uzl�, nap�.: jedin� v libovoln� v��ce p��mo nad st�edem 
%spojnice po��te�n�ho a koncov�ho bodu
D1 = [209.2721; 140.2162; 209.2721];
startPoint = D1;
endPoint = [209.2721;140.2162;-209.2721];
vyska = D1(2);
uzel1 = [ (startPoint(1)+endPoint(1))/2, vyska ,(startPoint(3)+endPoint(3))/2 ];

%pro ka�dou dvojici po sob� jdouc�ch bod� spo�teme p��mku:
smerovyVektor = (uzel1 - startPoint'); % resp. endpoint-uzel1
%smerovyVektor = (endPoint - uzel1); % resp. endpoint-uzel1
pocetKroku = 10;
t = linspace(0,1,pocetKroku);

%rovnice primky
X = startPoint(1) + t * smerovyVektor (1);
Y = startPoint(2) + t * smerovyVektor (2);
Z = startPoint(3) + t * smerovyVektor (3);

% X,Y,Z jsou vektory (stejn� velk� jako po�et krok� t) ud�vaj�c� body
%le��c� na p��mce
%pro ka�d� bod spo�teme inverzn� �lohou nato�en�, d�le obdobn� jako u
%p�edchoz�ho p��kladu

array = 10;
%points = zeros(array, 5);
points = zeros(array, 3);
i = 1;

for te = t
    %points(i,:) = inverz(X(i), Y(i), Z(i));
    points(i,:) = [X(i), Y(i), Z(i)];
    i = i+1;
end

scatter3(points(:,1),points(:,3),points(:,2),3)
xlabel('X')
ylabel('Z')
zlabel('Y')
