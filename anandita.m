## I dedicate any and all copyright interest in this software to the
## public domain. I make this dedication for the benefit of the public at
## large and to the detriment of my heirs and successors. I intend this
## dedication to be an overt act of relinquishment in perpetuity of all
## present and future rights to this software under copyright law.
##
## Author: Varun Patil <radialapps@gmail.com>
## Created: 2018-11-17

function [] = anandita ()
  M = 2;
  
  ###################################################
  tool = "Electroplated";
  #################### Fy ###########################

  #nitin("./slot grinding/N/12000_30_20_slot.lvm", 89.5, 91, 0.05, M, 2, "F_y", 10, 1, 12000, 30, 20, tool);
  #nitin("./slot grinding/N/24000_30_20_slot.lvm", 88.5, 90, 0.05, M, 2, "F_y", 1, 1, 24000, 30, 20, tool);
  #nitin("./slot grinding/N/36000_30_20_slot.lvm", 87.5, 90, 0.05, M, 2, "F_y", 1, 1, 36000, 30, 20, tool);
  #nitin("./slot grinding/N/48000_30_20_slot.lvm", 87, 88.5, 0.05, M, 2, "F_y", 1, 1, 48000, 30, 20, tool);
  #nitin("./slot grinding/N/60000_30_20_slot.lvm", 87.2, 88.5, 0.05, M, 2, "F_y", 1, 1, 60000, 30, 20, tool);
  #nitin("./slot grinding/N/24000_30_30_slot.lvm", 87, 89, 0.05, M, 2, "F_y", 1, 1, 24000, 30, 30, tool);
  #nitin("./slot grinding/N/24000_30_40_slot.lvm", 88, 91, 0.05, M, 2, "F_y", 3, 1, 24000, 30, 40, tool);
  #nitin("./slot grinding/N/24000_30_50_slot.lvm", 85, 91, 0.05, M, 2, "F_y", 0, 1, 24000, 30, 50, tool);
  #nitin("./slot grinding/N/24000_30_60_slot.lvm", 88, 90, 0.05, M, 2, "F_y", 0, 1, 24000, 30, 60, tool);
  #nitin("./slot grinding/N/24000_60_20_slot.lvm", 46.2, 47.5, 0.05, M, 2, "F_y", 2, 1, 24000, 60, 20, tool);
  #nitin("./slot grinding/N/24000_90_20_slot.lvm", 31.15, 33.5, 0.05, M, 2, "F_y", 1, 1, 24000, 90, 20, tool);
  #nitin("./slot grinding/N/24000_120_20_slot.lvm", 25.3, 27, 0.05, M, 2, "F_y", 2, 1, 24000, 120, 20, tool);
  #nitin("./slot grinding/N/24000_150_20_slot.lvm", 22.1, 24, 0.05, M, 2, "F_y", 2, 1, 24000, 150, 20, tool);

  #################### Fz ###########################
  
  #nitin("./slot grinding/N/12000_30_20_slot.lvm", 89.5, 91, 0.05, M, 3, "F_z", 9, 1, 12000, 30, 20, tool);
  #nitin("./slot grinding/N/24000_30_20_slot.lvm", 88.5, 90, 0.05, M, 3, "F_z", 0, 1, 24000, 30, 20, tool);
  #nitin("./slot grinding/N/36000_30_20_slot.lvm", 87.5, 90, 0.05, M, 3, "F_z", 1, 1, 36000, 30, 20, tool);
  #nitin("./slot grinding/N/48000_30_20_slot.lvm", 87, 88.5, 0.05, M, 3, "F_z", 1, 1, 48000, 30, 20, tool);
  #nitin("./slot grinding/N/60000_30_20_slot.lvm", 87.2, 88.5, 0.05, M, 3, "F_z", 0, 1, 60000, 30, 20, tool);
  #nitin("./slot grinding/N/24000_30_30_slot.lvm", 87, 89, 0.05, M, 3, "F_z", 0, 1, 24000, 30, 30, tool);
  #nitin("./slot grinding/N/24000_30_40_slot.lvm", 88, 91, 0.05, M, 3, "F_z", 2, 1, 24000, 30, 40, tool);
  #nitin("./slot grinding/N/24000_30_50_slot.lvm", 85, 91, 0.05, M, 3, "F_z", -1, 1, 24000, 30, 50, tool);
  #nitin("./slot grinding/N/24000_30_60_slot.lvm", 88, 90, 0.05, M, 3, "F_z", -1, 1, 24000, 30, 60, tool);
  #nitin("./slot grinding/N/24000_60_20_slot.lvm", 46.2, 47.5, 0.05, M, 3, "F_z", 0, 1, 24000, 60, 20, tool);
  #nitin("./slot grinding/N/24000_90_20_slot.lvm", 31.15, 33.5, 0.05, M, 3, "F_z", 0, 1, 24000, 90, 20, tool);
  #nitin("./slot grinding/N/24000_120_20_slot.lvm", 25.3, 27, 0.05, M, 3, "F_z", -2, 1, 24000, 120, 20, tool);  
  #nitin("./slot grinding/N/24000_150_20_slot.lvm", 22.1, 24, 0.05, M, 3, "F_z", -1, 1, 24000, 150, 20, tool);
  
  ###################################################
  tool = "Metal Bonded";
  #################### Fy ###########################

  #nitin("./slot grinding/Metal Bonded/07-11-2018/12000_30_20.lvm", 89, 90.5, 0.03, M, 3, "F_y", 2, 1, 12000, 30, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_20.lvm", 89.5, 91, 0.03, M, 3, "F_y", -1, 1, 24000, 30, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/48000_30_20.lvm", 87.5, 89.2, 0.03, M, 3, "F_y", -1, 1, 48000, 30, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/60000_30_20.lvm", 86, 94, 0.03, M, 3, "F_y", 2, 1, 60000, 30, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_30.lvm", 89, 92, 0.03, M, 3, "F_y", 2, 1, 24000, 30, 30, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_40.lvm", 90, 92, 0.03, M, 3, "F_y", 2, 1, 24000, 30, 40, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_50.lvm", 90, 92, 0.03, M, 3, "F_y", 0, 1, 24000, 30, 50, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_60.lvm", 90, 91.6, 0.03, M, 3, "F_y", 0, 1, 24000, 30, 60, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_60_20.lvm", 44.5, 47, 0.03, M, 3, "F_y", 2, 1, 24000, 60, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_90_20.lvm", 33, 35, 0.03, M, 3, "F_y", 4, 1, 24000, 90, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_120_20.lvm", 26.3, 27.6, 0.03, M, 3, "F_y", 0, 1, 24000, 120, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_150_20.lvm", 25.4, 26.8, 0.03, M, 3, "F_y", 1, 1, 24000, 150, 20, tool);
  
  #################### Fz ###########################

  #nitin("./slot grinding/Metal Bonded/07-11-2018/12000_30_20.lvm", 89, 90.5, 0.03, M, 2, "F_z", 2, 1, 12000, 30, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_20.lvm", 89.5, 91, 0.03, M, 2, "F_z", 1, 1, 24000, 30, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/48000_30_20.lvm", 87.5, 89.2, 0.03, M, 2, "F_z", -1, 1, 48000, 30, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/60000_30_20.lvm", 86, 94, 0.03, M, 2, "F_z", 2, 1, 60000, 30, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_30.lvm", 89, 92, 0.03, M, 2, "F_z", 6, 1, 24000, 30, 30, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_40.lvm", 90, 92, 0.03, M, 2, "F_z", 7, 1, 24000, 30, 40, tool);
  nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_50.lvm", 90, 92, 0.03, M, 2, "F_z", 7, 1, 24000, 30, 50, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_30_60.lvm", 90, 91.6, 0.03, M, 2, "F_z", 5, 1, 24000, 30, 60, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_60_20.lvm", 44.5, 47, 0.03, M, 2, "F_z", 7, 1, 24000, 60, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_90_20.lvm", 33, 35, 0.03, M, 2, "F_z", 7, 1, 24000, 90, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_120_20.lvm", 26.3, 27.6, 0.03, M, 2, "F_z", 2, 1, 24000, 120, 20, tool);
  #nitin("./slot grinding/Metal Bonded/07-11-2018/24000_150_20.lvm", 25.4, 26.8, 0.05, M, 2, "F_z", 5, 1, 24000, 150, 20, tool);
  

  # Y-direction bare forces
  #abhinav("./slot grinding/N/12000_30_20_slot.lvm", 89.5, 10, M, 2, 1);
  #abhinav("./slot grinding/N/24000_30_20_slot.lvm", 88.5, 2, M, 2, 1);
  #abhinav("./slot grinding/N/36000_30_20_slot.lvm", 87.5, 2, M, 2, 1);
  #abhinav("./slot grinding/N/48000_30_20_slot.lvm", 87, 2, M, 2, 1);
  #abhinav("./slot grinding/N/60000_30_20_slot.lvm", 87.2, 2, M, 2, 1);
  #abhinav("./slot grinding/N/24000_30_30_slot.lvm", 85, 20, M, 2, 10);
  #abhinav("./slot grinding/N/24000_30_40_slot.lvm", 88, 4, M, 2, 1);
  #abhinav("./slot grinding/N/24000_30_50_slot.lvm", 85, 8, M, 2, 10);
  #abhinav("./slot grinding/N/24000_30_60_slot.lvm", 88, 2, M, 2, 10);
  #abhinav("./slot grinding/N/24000_60_20_slot.lvm", 46.2, 2, M, 2, 10);
  #abhinav("./slot grinding/N/24000_90_20_slot.lvm", 30, 20, M, 2, 10);
  #abhinav("./slot grinding/N/24000_120_20_slot.lvm", 25.3, 20, M, 2, 10);
  #abhinav("./slot grinding/N/24000_150_20_slot.lvm", 22.1, 20, M, 2, 10);
  
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/12000_30_20.lvm", 89, 3, M, 3, 1);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/24000_30_20.lvm", 89, 5, M, 3, 1);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/48000_30_20.lvm", 87, 5, M, 3, 1);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/60000_30_20.lvm", 86, 20, M, 3, 1);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/24000_30_30.lvm", 89, 4, M, 3, 1);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/24000_30_40.lvm", 90, 100, M, 3, 10);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/24000_30_50.lvm", 90, 100, M, 3, 10);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/24000_30_60.lvm", 90, 100, M, 3, 10);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/24000_60_20.lvm", 44, 5, M, 3, 10);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/24000_90_20.lvm", 33, 50, M, 3, 10);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/24000_120_20.lvm", 20, 50, M, 3, 10);
  #abhinav("./slot grinding/Metal Bonded/07-11-2018/24000_150_20.lvm", 10, 50, M, 3, 10);

endfunction
