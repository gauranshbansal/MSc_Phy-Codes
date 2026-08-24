set t postscript
set o "ch6q3.eps"
set xlabel "x(theta)"
set ylabel "y(theta)"
set title "GAURANSH BANSAL CH6Q3"
set grid
set autoscale
plot "orbit_nrg0.25.dat", "orbit_nrg0.dat"
