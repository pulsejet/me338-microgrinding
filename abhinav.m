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
