function [MTran] = getTranMatrix(x)

    MTran = [1 0 0 x;
             0 1 0 0;
             0 0 1 0;
             0 0 0 1];

end