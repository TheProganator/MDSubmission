doPlot = 1;
dt = 15e-15;
TStop = 1000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

Mass0 = 14 * C.am; % Silicon
Mass1 = 5 * C.am; % Argon

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1/6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 30;

AddRectAtomicArray(10, 10, 0, 0, 0, 0, 0, 0, T, 0);
AddRectAtomicArray(5, 5, -6e-9, -6e-9, 1500, 1500, 0, 0, 0, 0);
AddRectAtomicArray(5, 5, 6e-9, 6e-9, -1500, -1500, 0, 0, 0, 0);
AddRectAtomicArray(5, 5, -12e-9, 12e-9, 1500, -1500, 0, 0, 0, 0);
AddRectAtomicArray(5, 5, 12e-9, -12e-9, -1500, 1500, 0, 0, 0, 0);
AddRectAtomicArray(1, 1, 0, 0, 0, 0, 0, 0, 1000*T, 0);

Size = 16 * AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5*dt;
MarkerSize = 10;
PlotFile = 'Block.gif';
doPlotImage = 1;
PlotSize = [100, 100, 1049, 1049];

ScaleV = .2e-11;
ScaleF = 20;
