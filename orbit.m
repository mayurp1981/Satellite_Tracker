function dy = orbit(t, y)
  % Define constants
  mu = 398600; % kg^-1 s^-2
  J2 = 0.0010827;
  Re = 6378; % km

  % Calculate the magnitude of r
  r = sqrt(y(1)^2 + y(2)^2 + y(3)^2);
  
  % Considering zonal harmonic J2 effect
  a_sphJ2 = ((3/2) * ((J2 * mu * Re^2) / r^4) * (y(1:3) / r) .* (5 * (y(3)^2 / r^2) - 1));

  % Calculate dy
  dy = zeros(6, 1);  % Pre-allocate dy for efficiency
  dy(1:3) = y(4:6);
  dy(4:6) = (-mu * y(1:3) / r^3) + a_sphJ2;
  dy = dy';
end
