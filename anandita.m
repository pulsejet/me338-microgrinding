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
## Created: 2018-11-17

function [] = anandita ()
  M = 2;
  tool = "Electroplated";

  #nitin("./slot grinding/N/12000_30_20_slot.lvm", 135, 137, 0.01, M, 3, "F_x", 3, 1, 24000, 30, 20, tool);

  #nitin("./slot grinding/N/12000_30_20_slot.lvm", 89.5, 91, 0.02, M, 2, "F_y", 10, 1, 12000, 30, 20, tool);
  #nitin("./slot grinding/N/24000_30_20_slot.lvm", 88.5, 90, 0.05, M, 2, "F_y", 1, 1, 24000, 30, 20, tool);
  #nitin("./slot grinding/N/36000_30_20_slot.lvm", 87.5, 90, 0.05, M, 2, "F_y", 1, 1, 36000, 30, 20, tool);
  #nitin("./slot grinding/N/48000_30_20_slot.lvm", 87, 88.5, 0.05, M, 2, "F_y", 1, 1, 48000, 30, 20, tool);
  

  # Y-direction bare forces
  #abhinav("./slot grinding/N/12000_30_20_slot.lvm", 89.5, 10, M, 2, 1);
  #abhinav("./slot grinding/N/24000_30_20_slot.lvm", 88.5, 2, M, 2, 1);
  #abhinav("./slot grinding/N/36000_30_20_slot.lvm", 87.5, 2, M, 2, 1);
  #abhinav("./slot grinding/N/48000_30_20_slot.lvm", 87, 2, M, 2, 1);
endfunction
