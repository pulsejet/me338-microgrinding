## Copyright (C) 2018 varun
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## Author: Varun Patil <radialapps@gmail.com>
## Created: 2018-11-18

function [force] = nitin (filename, bias, bias_end, range, scaling, column, colname, phase, skip, rpm, feed, doc, tool)

  # Start a new graph
  figure;

  # Definition of one second
  sec = 10000;
  
  # Globals
  SCALING = scaling;
  COLUMN = column;

  # For grinding value
  BIAS = bias * sec;
  RANGE = range * sec;
  
  # Values after grinding  
  BIAS_END = bias_end * sec + phase;
  RANGE_END = RANGE;
  
  # File to process
  FILENAME = filename;

  # Skipping ranges  
  SKIP = skip;
  
  # Read files
  a = dlmread(FILENAME, '\t', [BIAS 0 (RANGE+BIAS) 3]);
  b = dlmread(FILENAME, '\t', [BIAS_END 0 (RANGE_END+BIAS_END) 3]);

  # Reset time domain  
  b(:, 1) -= ((BIAS_END - BIAS) / sec);

  # Skip ranges  
  a = a(1:SKIP:end,:);
  b = b(1:SKIP:end,:);
  
  # Scale  
  a(:, COLUMN) *= SCALING;
  b(:, COLUMN) *= SCALING;
  #b(:, COLUMN) += 1.7;
  
  # Construct title
  my_title = strcat(colname, " vs t (", tool, ")\n");
  my_title = strcat(my_title, "f=", num2str(feed), "x10^{-6} m/s, d=", num2str(doc));
  my_title = strcat(my_title, "x10^{-6} m, rpm=", num2str(rpm));
  title(my_title, "fontsize", 12);
  
  # Set axes labels
  xlabel("Time (t)", "fontsize", 12);
  ylabel("Force (N)", "fontsize", 12);
  hold on;
  
  # Plot raw values
  plot(a(:,1), a(:,COLUMN), 'b')
  hold on;

  plot(b(:,1), b(:,COLUMN), 'r')
  hold on;

  # Take fourier transforms  
  af = fft(a(:, COLUMN));
  bf = fft(b(:, COLUMN));

  # Get differential signal (remove lf noise)
  df = af - bf;  
  idf = real(ifft(df));
  
  # Remove hf/uhf noise
  df(10:end) = 0;
  ief = real(ifft(df));

  # Remove hf noise from original data
  af(5:end) = 0;
  bf(5:end) = 0;
  
  # Invert originals after noise removal
  iaf = real(ifft(af));
  ibf = real(ifft(bf));
  
  # Plot originals with noise removal
  plot(a(:,1), iaf, 'b')
  hold on;
  
  plot(b(:,1), ibf, 'r')
  hold on;
  
  # Plot final force
  plot(b(:,1), idf, 'g')
  hold on;
  
  plot(b(:,1), ief, 'k')
  text(bias, max(idf), strcat("Mean Force=", num2str(mean(ief)), "N"), 'fontsize', 12);
  # legend("Measured Force", "Measurement Noise", "Measured Force (Base)", "Measurement Noise (Base)", "Grinding Force", "Grinding Force (Filtered)", 'location', 'EastOutside');
  hold off;
  
  # Save the plot
  print("-dpng", strcat(filename, ".png"));
  
  # Return and print mean of force
  force = mean(ief)

endfunction
