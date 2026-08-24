set t postscript;
set o "ch3q3.eps";
set grid;
set autoscale;
plot "ch3q3a.dat" using 1:2 w lines title "n=0","ch3q3b.dat" using 1:2 w lines title "n=1","ch3q3c.dat" using 1:2 w lines title "n=2"
