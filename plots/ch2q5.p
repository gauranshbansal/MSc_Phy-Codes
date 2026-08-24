set t postscript;
set o "bessel.pdf";
set grid;
set title "Bessel Function Chapter 2 Q5 [GAURANSH BANSAL]"
plot "bessel.txt" using 1:2 w lines title "j0", "bessel.txt" using 1:3 w lines title "j1", "bessel.txt" using 1:4 w lines title "j2", "bessel.txt" using 1:5 w lines title "j3";
