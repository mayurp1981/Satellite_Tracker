# Satellite Orbit Tracker and Visibility Analyzer

This repository contains MATLAB code for tracking the orbits of active satellites using Two-Line Element (TLE) data obtained from NORAD. The code extracts satellite information from TLE files, propagates the orbit numerically using the RK4 method, and converts the data into range, azimuth, and elevation with respect to a specified ground station.

**Key Features:**

Orbit Propagation: Utilizes the orbit.m function and RK4 numerical propagator to predict satellite orbits.
Ground Station Tracking: Monitors and tracks satellites as they pass over a specific ground station.
Visibility Analysis: Provides visibility opportunities of satellites at the ground station.
Visualizations: Includes skyplots illustrating the paths of satellites passing over and 2D plots of the propagated orbits.

**Usage:**

Input NORAD TLE files of satellites.
Specify the latitude and longitude of the ground station.

**Output:**

Visibility timing of satellites over the ground station.
Skyplots showcasing the paths of satellites passing over the ground station.
2D plots of the propagated satellite orbits.
