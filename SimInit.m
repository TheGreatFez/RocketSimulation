%% Planet Data

SimData.Planet.Radius     = 6000000; % m
SimData.Planet.MaxAtmoAlt = 130000;  % m, Altitude where atmosphere stops
SimData.Planet.GM         = 3.986004418E14; % m^3/s^2, Gravitational Parameter
SimData.Planet.RotationSpeed = 2*pi/(24*60*60*(0.99726968)); % rad/s, one rotation of earth

%% Initial Conditions for Rocket:
Px = 0; % m
Py = SimData.Planet.Radius + .1; % m

X = [Px;Py;0];
Y = [0;0;SimData.Planet.RotationSpeed];
V = cross(X,Y);

SimData.InitialConditions.V0 = [V(1),V(2)];   % m/s

SimData.InitialConditions.P0 = [Px;Py];     % m
%% Constants for Simulation

SimData.Constants.g0 = 9.81; % m/s^2

%% Ship Data (Falcon 9 stats for first stage)

SimData.Ship.DryMass        = 22200;  % kg
SimData.Ship.WetMass        = 549054; % kg
SimData.Ship.Isp            = 300;    % s
SimData.Ship.Thrust         = 7607;   % kN
SimData.Ship.RefSurfArea    = 3.7^2;  % m^2 

%% End Conditions

SimData.TargetOrbit = 200000; % m, altitude of desired parking orbit

%% Aerodynamics Data

SimData.Ship.ConstantCD = 1; % none, Value if constant drag is turned on
SimData.Ship.ConstantCL = 1; % none, Value if constant lift is turned on
load('DragData.mat');
load('EarthAtmoData.mat');

%% Control Data

SimData.Control.PitchOverAlt = 117; % m, altitude where pitch over finishes
SimData.Control.PitchOverAngle = 0.1; % degrees, angle where pitch over finishes