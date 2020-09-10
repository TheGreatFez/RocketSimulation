run EarthCoordinates
figure(1)
clf
plot(out.PlanetRelative(:,1),out.PlanetRelative(:,2),'DisplayName','Trajectory')
hold on
plot(plotXY(:,1),plotXY(:,2),'DisplayName','Planet')
plot(plotATMOXY(:,1),plotATMOXY(:,2),'DisplayName','Planet Atmosphere')
legend
xlabel('X Position (m)')
ylabel('Y Position (m)')
% x_min = min(out.PlanetRelative(:,1));
% x_max = max(out.PlanetRelative(:,1));
% 
% y_min = min(out.PlanetRelative(:,2));
% y_max = max(out.PlanetRelative(:,2));
% 
% axis([x_min x_max, y_min, y_max])

axis square