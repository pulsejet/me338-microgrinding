## I dedicate any and all copyright interest in this software to the
## public domain. I make this dedication for the benefit of the public at
## large and to the detriment of my heirs and successors. I intend this
## dedication to be an overt act of relinquishment in perpetuity of all
## present and future rights to this software under copyright law.
##
## Author: Varun Patil <radialapps@gmail.com>
## Created: 2018-11-17

function [force] = nitin (filename, bias, bias_end, range, scaling, column, colname, phase, skip, rpm, feed, doc, tool, doplot)
  
  disp(strcat("Processing file ", filename));
  fflush(stdout);
  
  if (doplot)
    # Start a new graph
    figure;
  endif

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
  #b(:, COLUMN) += 1;
  
  # Take fourier transforms  
  af = fft(a(:, COLUMN));
  bf = fft(b(:, COLUMN));
  
  # Plot FFT

  %%Time specifications:
  Fs = 10000;                    % samples per second
  dt = 1/Fs;                     % seconds per sample
  StopTime = range;              % seconds
  t = (0:dt:StopTime-dt)';
  N = size(t,1);

  %%Fourier Transform:
  X = fftshift(af);
  Y = fftshift(bf);

  %%Frequency specifications:
  dF = Fs/N;                   % hertz
  f = -Fs/2:dF:Fs/2;           % hertz

  %%Plot the spectrum:
  plot(f,abs(X)/N);
  xlabel('Frequency (in hertz)');
  
  my_title = "";
  my_title = strcat(my_title, "f=", num2str(feed), "e-6 m/s, d=", num2str(doc));
  my_title = strcat(my_title, "e-6 m, rpm=", num2str(rpm));
  title(strcat("Magnitude Response (", colname, ") \n ", my_title));

  hold on;

  plot(f,abs(Y)/N,'r--');
  hold off;

  legend("Force", "Noise");
  print("-dpng", strcat(filename, "_FFT_", colname, ".png"));
  
  figure;
  
  if (doplot)
    # Construct title
    my_title = strcat(colname, " vs t (", tool, ")\n", my_title);

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
  endif

  # Get differential signal (remove lf noise)
  df = af - bf;
  bfc = bf + 0;
  bfc(1:5) = 0;
  idx = find(abs(real(bfc)) > 4);
  df(idx) = 0;
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

  if (doplot)  
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
    print("-dpng", strcat(filename, "_", colname, ".png"));
  endif

  close all;  
  
  # Return and print mean of force
  force = mean(ief);

endfunction
