set t postscript
set o "ch2q4test.eps"
set grid;
# set multiplot layout 2,2 title "CHAPTER 2 Q4 [GAURANSH BANSAL]";
plot "1.txt" w lines title "l=0 m=0";
plot "2.txt" w lines title "l=0 m=+-1";
plot "3.txt" w lines title "l=0 m=+-2";
plot "4.txt" w lines title "l=0 m=+-3";
