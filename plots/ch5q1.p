set t postscript
set o "ch5q1.eps"
set grid
set title "CH5 Q1 [GAURANSH BANSAL]"
set label "Both methods work equally well here." at 1.5,190
set label "(h=0.0001)"at 1.5,180
   set arrow from 1.75,160 to 3.5,70 fill
plot "res1.dat" title "Euler's Method" w lines, "res2.dat" title "Range Kutta Method" w lines
