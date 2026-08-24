set t postscript
set o "ch6q2.eps"
set grid
set title "CH6 Q2 GAURANSH BSANSAL Plotting integral of  time period of pendulum using Trapezoidal Method for integration"
plot "ch6q2.dat" using 2:1 w lines,  "ch6q2.dat" using 3:1 w lines,  "ch6q2.dat" using 4:1;
