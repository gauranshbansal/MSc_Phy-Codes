set t postscript
set o "lissajous2.eps"
set grid;
set multiplot layout 2,2 title "For n=1, 2, 2.5 and 3"

set title "n=1 del=PI/4 A=1";plot "ch2q2b1.txt" w linespoints;
set title "n=2 del=PI/4 A=1";plot "ch2q2b2.txt" w linespoints;
set title "n=2.5 del=PI/4 A=1";plot "ch2q2b3.txt" w linespoints;
set title "n=3 del=PI/4 A=1";plot "ch2q2b4.txt" w linespoints;
