function [MrotY] = getYRotationMatrix(uhelDeg)
  %vstup uhelDeg, uhel o ktery se rotuje ve stupnich
  %fi = deg2rad(uhelDeg);
  MrotY = [cosd(uhelDeg), 0, sind(uhelDeg), 0;
                       0, 1,             0, 0;
          -sind(uhelDeg), 0, cosd(uhelDeg), 0;
                       0, 0,             0, 1];
end
