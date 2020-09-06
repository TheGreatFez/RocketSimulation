%% Initial Conditions for Rocket:

SimData.InitialConditions.V0 = [0,0.1,0];   % m/s

SimData.InitialConditions.P0 = [0,0,0];     % m

%% Planet Data

SimData.Planet.Radius = 6000000; % m

%% Constants for Simulation

SimData.Constants.g0 = 9.81; % m/s^2

%% Ship Data

SimData.Ship.DryMass = 1000;    % kg
SimData.Ship.WetMass = 10000;   % kg
SimData.Ship.Isp     = 300;     % s
SimData.Ship.Thrust  = 200;     % kN

%% End Conditions

SimData.TargetOrbit = 200000; % m, altitude of desired parking orbit