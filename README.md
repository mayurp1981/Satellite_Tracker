# Satellite Orbit Tracker and Visibility Analyzer

This repository contains MATLAB code for tracking the orbits of active satellites using Two-Line Element (TLE) data obtained from NORAD. The code extracts satellite information from TLE files, propagates the orbit numerically using the RK4 method, and converts the data into range, azimuth, and elevation with respect to a specified ground station.

**Key Features:**

Orbit Propagation: Utilizes the orbit.m function and RK4 numerical propagator to predict satellite orbits.
Ground Station Tracking: Monitors and tracks satellites as they pass over a specific ground station.
Visibility Analysis: Provides visibility opportunities for satellites at the ground station.
Visualizations: Includes sky plot illustrating the paths of satellites passing over and 2D globe plots of the propagated orbits.

**Usage:**

Input NORAD TLE files of satellites. [https://celestrak.org/NORAD/elements/gp.php?GROUP=active&FORMAT=tle]
Specify the latitude and longitude of the ground station.

**Output:**

Visibility timing of satellites over the ground station.
Skyplots showcasing the paths of satellites passing over the ground station.
2D plots of the propagated satellite orbits.

**Note:** Skyplot and 2D satellite plots are available in the 'visualizations' directory.

**How to Use:**

Clone the repository: git clone (https://github.com/mayurp1981/Satellite_Tracker)
Run the MATLAB script with your TLE data and ground station coordinates.

Feel free to contribute, report issues, or suggest improvements. Happy tracking!

**Demo Skyplot**
![skyplot2](https://github.com/mayurp1981/Satellite_Tracker/assets/75112223/9060ffcf-6fcd-4b95-8a85-0c8f1815a81a)
