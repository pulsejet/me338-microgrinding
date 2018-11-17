# ME 338 Project: Microgrinding
This project aims to experimentally study forces and surface roughness with varying parameters in micro-grinding. All code is tested and is meant to be run using GNU Octave 4.2.2. Since it might use Octave specific syntax, the code might not want to run under MATLAB.

## Usage
There are 3 functions:
1) `abhinav()`: to plot raw force against time for a given file, column and range (specified by the start time and duration). You can skip rows by setting an argument while calling this. Recommended skip is 10.
2) `nitin()`: to plot graphs of force vs time and output to file. This takes as arguments the starting point in time to measure force, the duration of measurement (should be kept small, around 30-50ms), the starting time of noise measurement, phase, the column to work with and parameters to construct plot annotations. The unit of phase is rows (hence must be integral), so a phase of 1 will effectively take the next row for noise measurement, or change the phase by the inverse of sampling frequency. To shift the red noise profile to the left, increase the phase argument.
3) `anandita()`: this function calls `nitin()` for each file input and outputs graphs for all files. All lines in this file should be commented by default, so graphs can be generated individually by default. It also contains useful ranges to observe in the commented `abhinav()` calls.

## License
All code is licensed under GPLv3. Data from the experiments performed is not available for public usage.

## Note
If you're reading this, sorry for the atrocious function names (of course, any resemblance to actual persons, living or dead is purely coincidental), but I'm writing this with a day to go for CS 419's endsem and am just slightly below 100F.

