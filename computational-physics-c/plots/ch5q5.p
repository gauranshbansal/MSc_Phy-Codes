set t postscript
set o "ch5q5alpha5.eps"
set grid;
set multiplot layout 2,3 title "CHAPTER 5 Q5 [GAURANSH BANSAL] Alpha = 5.0";
plot "ch5q5.dat" using 2:3 w lines title "x-y"
plot "ch5q5.dat" using 2:4 w lines title "x-z"
plot "ch5q5.dat" using 3:4 w lines title "y-z"
plot "ch5q5.dat" using 1:2 w lines title "x-t"
plot "ch5q5.dat" using 1:3 w lines title "y-t"
plot "ch5q5.dat" using 1:4 w lines title "z-t"
