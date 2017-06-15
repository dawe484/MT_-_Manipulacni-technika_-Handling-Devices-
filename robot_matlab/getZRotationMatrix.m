function [MrotZ] = getZRotationMatrix(uhelDeg)
  %vstup uhelDeg, uhel o ktery se rotuje ve stupnich
  %fi = deg2rad(uhelDeg);
  MrotZ = [cosd(uhelDeg), -sind(uhelDeg), 0, 0;
           sind(uhelDeg),  cosd(uhelDeg), 0, 0;
                       0,              0, 1, 0;
                       0,              0, 0, 1];
end
