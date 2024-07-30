set term pngcairo size 600,400 enhanced

# Set the output file name and path
set out "zeroG.png"

# Set title and labels
set title "Floating Pressure, Relative Pressure"
set xlabel "Time (s)"
set ylabel "p/p_{0}"
# set ylabel "{/:Bold p/p_{0}}"

# Set grid
set grid

# Plot the data from the file 'p.dat'
plot 'postProcessing/probes/0/p.dat' u 1:($2/100000.0) w l t 'End of inlet, bottom' lc rgb "red", \
     'postProcessing/probes/0/p.dat' u 1:($3/100000.0) w l t 'End of first ramp' lc rgb "blue", \
     'postProcessing/probes/0/p.dat' u 1:($7/100000.0) w l t 'End of virtual domain, middle' lc rgb "green"