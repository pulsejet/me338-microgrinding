## I dedicate any and all copyright interest in this software to the
## public domain. I make this dedication for the benefit of the public at
## large and to the detriment of my heirs and successors. I intend this
## dedication to be an overt act of relinquishment in perpetuity of all
## present and future rights to this software under copyright law.
##
## Author: Varun Patil <radialapps@gmail.com>
## Created: 2018-11-17

function [] = vikrant (fmapy, axs)
  
  ################ RPM #########################################################
  f1 = "./slot grinding/N/12000_30_20_slot.lvm";
  f2 = "./slot grinding/N/24000_30_20_slot.lvm";
  f3 = "./slot grinding/N/36000_30_20_slot.lvm";
  f4 = "./slot grinding/N/48000_30_20_slot.lvm";
  f5 = "./slot grinding/N/60000_30_20_slot.lvm";

  fy = [fmapy(f1) fmapy(f2) fmapy(f3) fmapy(f4) fmapy(f5)];
  rpm = [12000 24000 36000 48000 60000];
  plot(rpm, fy, '-sr');
  hold on;

  f1 = "./slot grinding/Metal Bonded/07-11-2018/12000_30_20.lvm";
  f2 = "./slot grinding/Metal Bonded/07-11-2018/24000_30_20.lvm";
  f3 = "./slot grinding/Metal Bonded/07-11-2018/36000_30_20.lvm";
  f4 = "./slot grinding/Metal Bonded/07-11-2018/48000_30_20.lvm";
  f5 = "./slot grinding/Metal Bonded/07-11-2018/60000_30_20.lvm";
  fy = [fmapy(f1) fmapy(f2) fmapy(f3) fmapy(f4) fmapy(f5)];
  plot(rpm, fy, '-sb');
  hold on;
  
  title(strcat(axs, " vs RPM"));
  xlabel("RPM");
  ylabel("Avg Force (N)");
  legend("Electroplated Tool", "Metal Bonded Tool");
  print("-dpng", strcat("COMB_RPM_", axs, ".png"));

  hold off;
  
  ################ FEED ########################################################
  f1 = "./slot grinding/N/24000_60_20_slot.lvm";
  f2 = "./slot grinding/N/24000_90_20_slot.lvm";
  f3 = "./slot grinding/N/24000_120_20_slot.lvm";
  f4 = "./slot grinding/N/24000_150_20_slot.lvm";

  fy = [fmapy(f1) fmapy(f2) fmapy(f3) fmapy(f4)];
  rpm = [60 90 120 150];
  plot(rpm, fy, '-sr');
  hold on;

  f1 = "./slot grinding/Metal Bonded/07-11-2018/24000_60_20.lvm";
  f2 = "./slot grinding/Metal Bonded/07-11-2018/24000_90_20.lvm";
  f3 = "./slot grinding/Metal Bonded/07-11-2018/24000_120_20.lvm";
  f4 = "./slot grinding/Metal Bonded/07-11-2018/24000_150_20.lvm";
  fy = [fmapy(f1) fmapy(f2) fmapy(f3) fmapy(f4)];
  plot(rpm, fy, '-sb');
  hold on;
  
  title(strcat(axs, " vs Feed"));
  xlabel("Feed (e-6 m/s)");
  ylabel("Avg Force (N)");
  legend("Electroplated Tool", "Metal Bonded Tool");
  print("-dpng", strcat("COMB_FEED_", axs, ".png"));

  hold off;
  
  ################ DOC #########################################################
  f2 = "./slot grinding/N/24000_30_30_slot.lvm";
  f3 = "./slot grinding/N/24000_30_40_slot.lvm";
  f4 = "./slot grinding/N/24000_30_50_slot.lvm";
  f5 = "./slot grinding/N/24000_30_60_slot.lvm";

  fy = [fmapy(f2) fmapy(f3) fmapy(f4) fmapy(f5)];
  rpm = [30 40 50 60];
  plot(rpm, fy, '-sr');
  hold on;

  f2 = "./slot grinding/Metal Bonded/07-11-2018/24000_30_30.lvm";
  f3 = "./slot grinding/Metal Bonded/07-11-2018/24000_30_40.lvm";
  f4 = "./slot grinding/Metal Bonded/07-11-2018/24000_30_50.lvm";
  f5 = "./slot grinding/Metal Bonded/07-11-2018/24000_30_60.lvm";
  fy = [fmapy(f2) fmapy(f3) fmapy(f4) fmapy(f5)];
  plot(rpm, fy, '-sb');
  hold on;
  
  title(strcat(axs, " vs Depth of Cut"));
  xlabel("Depth of Cut");
  ylabel("Avg Force (N)");
  legend("Electroplated Tool", "Metal Bonded Tool");
  print("-dpng", strcat("COMB_DOC_", axs, ".png"));

  hold off;

endfunction
