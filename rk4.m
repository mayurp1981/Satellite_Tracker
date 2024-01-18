function yout = rk4(f, dt, t0, y0)
  % Calculate the intermediate slopes using Runge-kutta numerical integral
  k1 = f(t0, y0);
  k2 = f(t0 + dt/2, y0 + dt/2 * k1);
  k3 = f(t0 + dt/2, y0 + dt/2 * k2);
  k4 = f(t0 + dt, y0 + dt * k3);

  % Calculate the final output using vectorized operations
  yout = y0 + (dt/6) .* (k1 + 2.*k2 + 2.*k3 + k4);
end
