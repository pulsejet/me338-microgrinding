## I dedicate any and all copyright interest in this software to the
## public domain. I make this dedication for the benefit of the public at
## large and to the detriment of my heirs and successors. I intend this
## dedication to be an overt act of relinquishment in perpetuity of all
## present and future rights to this software under copyright law.
##
## Author: Varun Patil <radialapps@gmail.com>
## Created: 2018-11-17

function [] = rough ()

  # RPM
  rpm = [12000 24000 36000 48000 60000];
  sr = [2.591 3.09 2.39 1.876 2.179];
  plot(rpm, sr, '-sr');
  hold on;
  
  sr = [1.855 1.535 1.334 1.374 1.369];
  plot(rpm, sr, '-sb');
  hold on;
  
  title("Surface Roughness vs RPM");
  xlabel("RPM");
  ylabel("Surface Roughness (e-6 m)");
  legend("Electroplated Tool", "Metal Bonded Tool");
  print("-dpng", "ROUGH_RPM.png");
  hold off;
  
  # Feed
  rpm = [30 60 90 120 150];
  sr = [3.09 2.226 3.939 2.41 2.236];
  plot(rpm, sr, '-sr');
  hold on;
  
  sr = [1.535 1.54 1.833 1.751 2.189];
  plot(rpm, sr, '-sb');
  hold on;
  
  title("Surface Roughness vs Feed");
  xlabel("Feed (e-6 m/s)");
  ylabel("Surface Roughness (e-6 m)");
  legend("Electroplated Tool", "Metal Bonded Tool");
  print("-dpng", "ROUGH_FEED.png");
  hold off;
  
  # DOC
  rpm = [20 30 40 50 60];
  sr = [3.09 2.492 2.643 2.704 3.292];
  plot(rpm, sr, '-sr');
  hold on;
  
  sr = [1.535 1.47 1.743 1.699 1.56];
  plot(rpm, sr, '-sb');
  hold on;
  
  title("Surface Roughness vs Depth of Cut");
  xlabel("Depth of Cut (e-6 m)");
  ylabel("Surface Roughness (e-6 m)");
  legend("Electroplated Tool", "Metal Bonded Tool");
  print("-dpng", "ROUGH_DOC.png");
  hold off;

endfunction
