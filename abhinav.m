## I dedicate any and all copyright interest in this software to the
## public domain. I make this dedication for the benefit of the public at
## large and to the detriment of my heirs and successors. I intend this
## dedication to be an overt act of relinquishment in perpetuity of all
## present and future rights to this software under copyright law.
##
## Author: Varun Patil <radialapps@gmail.com>
## Created: 2018-11-17

function [] = abhinav (filename, bias, range, scaling, column, skip)
  # Start a new graph
  figure;

  # Definition of one second
  sec = 10000;
  
  # For grinding value
  BIAS = bias * sec;
  RANGE = range * sec;
  
  # Read files
  a = dlmread(filename, '\t', [BIAS 0 (RANGE+BIAS) 3]);

  # Skip ranges  
  a = a(1:skip:end,:);
  
  # Scale  
  a(:, column) *= scaling;
  
  # Plot raw values
  plot(a(:,1), a(:,column), 'b')
  hold on;
endfunction
