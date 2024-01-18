function GregDate = JD2UTC(t)
    % Calculate the Julian day number (JDN)
    jdn = t + 0.5;

    % Convert Julian day number to Gregorian date
    a = floor(jdn) + 32044;
    b = floor((4 * a + 3) / 146097);
    c = a - floor((146097 * b) / 4);
    d = floor((4 * c + 3) / 1461);
    e = c - floor((1461 * d) / 4);
    m = floor((5 * e + 2) / 153);

    day = e - floor((153 * m + 2) / 5) + 1;
    month = m + 3 - 12 * floor(m / 10);
    year = 100 * b + d - 4800 + floor(m / 10);

    % Calculate the fractional part of the day
    frac_day = jdn - floor(jdn);

    % Convert fractional day to hours, minutes, and seconds
    total_seconds = floor(frac_day * 86400);
    hours = floor(total_seconds / 3600);
    remainder = mod(total_seconds, 3600);
    minutes = floor(remainder / 60);
    seconds = mod(remainder, 60);

    % Create a vector for the Gregorian date and time
    GregDate = [year, month, day, hours, minutes, seconds];
end
