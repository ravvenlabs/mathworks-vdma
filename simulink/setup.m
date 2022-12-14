% Dr. Kaputa
% Sobel Demo Setup File
R = 752; 
C = 480;
coefficients = [1 0 -1;
                2 0 -2;
                1 0 -1];

topPorch = 1;
frontPorch = 94;
totalPixels = C  + frontPorch;
totalLines = R + 45;

data = imread('sailboat.jpg');