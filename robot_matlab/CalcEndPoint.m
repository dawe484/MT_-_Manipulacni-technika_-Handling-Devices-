function [endPoint] = CalcEndPoint(alfa, gama, delta)
  
  global L3;
  global L2;
  global L1;
  global uhelBeta;

  startPoint = [0;0;0];
  
  M1 = getTranMatrix(L3);
  M2 = getZRotationMatrix(360-delta);
  %disp(360-delta);
  M3 = getTranMatrix(L2);
  M4 = getZRotationMatrix(360-gama);
  M5 = getTranMatrix(L1);
  M6 = getZRotationMatrix(uhelBeta);
  M7 = getYRotationMatrix(360-alfa);
  
  M = M7*M6*M5*M4*M3*M2*M1;
  
  endPoint = M * [startPoint;1]; 
  endPoint = endPoint(1:3)'; % zajimaji nas pouze prvni 3 souradnice
end
