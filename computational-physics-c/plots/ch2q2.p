set t postscript
set o "ch2q2.eps"
set autoscale;
set grid;
set multiplot layout 4,4 title "Lissajous Figures Q2 [GAURANSH BANSAL]"
set tics font ",3"

set title "n=1 del=PI/4 A=1";plot "ch2q2a1.txt" w line notitle;
set title "n=2 del=PI/4 A=1";plot "ch2q2a2.txt" w lines notitle;
set title "n=2.5 del=PI/4 A=1";plot "ch2q2a3.txt" w lines notitle;
set title "n=3 del=PI/4 A=1";plot "ch2q2a4.txt" w lines notitle;

set title "A=0.5 del=PI/4 n=2";plot "ch2q2b1.txt" w lines notitle;
set title "A=1 del=PI/4 n=2";plot "ch2q2b2.txt" w lines notitle;
set title "A=2 del=PI/4 n=2";plot "ch2q2b3.txt" w lines notitle;
set title "A=3 del=PI/4 n=2";plot "ch2q2b4.txt" w lines notitle;

set title "del=PI/4 n=2 A=1";plot "ch2q2c1.txt" w lines notitle;
set title "del=PI/2 n=2 A=1";plot "ch2q2c2.txt" w lines notitle;
set title "del=PI n=2 A=1";plot "ch2q2c3.txt" w lines notitle;
set title "del=PI/6 n=2 A=1";plot "ch2q2c4.txt" w lines notitle;
