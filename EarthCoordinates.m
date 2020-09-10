max_angle = 2*pi;

plotTheta = linspace(0,max_angle,1000)';

for i=1:1000
    plotXY(i,1) = SimData.Planet.Radius*sin(plotTheta(i));
    plotXY(i,2) = SimData.Planet.Radius*cos(plotTheta(i));
    plotATMOXY(i,1) = (SimData.Planet.Radius+SimData.Planet.MaxAtmoAlt)*sin(plotTheta(i));
    plotATMOXY(i,2) = (SimData.Planet.Radius+SimData.Planet.MaxAtmoAlt)*cos(plotTheta(i));
end