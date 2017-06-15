function [angles] = inverz(x, y, z)

    D1 = [x; y; z ;1]; %[207;117;207;1]

    uhelBeta = 50;
    
    L1 = 150; %[mm], toto nastaveni se udela na jedinem miste
	
    L2 = 74;

    L3 = 130;
    
    uhelAlfa = atan2(D1(3), D1(1)) * 180 / pi;

    M1 = getYRotationMatrix(uhelAlfa);
    M2 = getZRotationMatrix(-uhelBeta);  % + ci - ?
    M3 = getTranMatrix(-L1);             % + ci - ?
    D4 = M3*M2*M1*D1;

    D4x = D4(1);
    D4y = D4(2);

    d = sqrt(power(D4x,2) + power(D4y,2));
    %dcarka = sqrt((D4x^2) + (D4y^2));

    pom = (power((L2 + L3),2) - power(d,2)) * (power(d,2) - power((L2 - L3),2));

    C4x1 = (D4x/2) + ((D4x*(power(L2,2) - power(L3,2))) / (2*(power(d,2)))) + ((D4y / (2*(power(d,2)))) * sqrt(pom));
    C4y1 = (D4y/2) + ((D4y*(power(L2,2) - power(L3,2))) / (2*(power(d,2)))) - ((D4x / (2*(power(d,2)))) * sqrt(pom));

    C4x2 = (D4x/2) + ((D4x*(power(L2,2) - power(L3,2))) / (2*(power(d,2)))) - ((D4y / (2*(power(d,2)))) * sqrt(pom));
    C4y2 = (D4y/2) + ((D4y*(power(L2,2) - power(L3,2))) / (2*(power(d,2)))) + ((D4x / (2*(power(d,2)))) * sqrt(pom));

    %kD = power(C4x1 - D4x,2) + power(C4y1 - D4y,2);

    %power(L3,2);

    uhelGama = atan2(C4y1, C4x1) * 180 / pi;

    M4 = getZRotationMatrix(-uhelGama);
    M5 = getTranMatrix(-L2);
    D6 = M5*M4*D4;

    uhelDelta = atan2(D6(2), D6(1)) * 180 / pi;


    uhelGama2 = atan2(C4y2, C4x2) * 180 / pi;

    M42 = getZRotationMatrix(-uhelGama2);
    M52 = getTranMatrix(-L2);
    D62 = M52*M42*D4;

    uhelDelta2 = atan2(D62(2), D62(1)) * 180 / pi;
    
    angles = [uhelAlfa, uhelGama, uhelDelta, uhelGama2, uhelDelta2];
    
%     alfa = uhelAlfa;
%     gama = uhelGama;
%     delta = uhelDelta;
%     gama2 = uhelGama2;
%     delta2 = uhelDelta2;
end