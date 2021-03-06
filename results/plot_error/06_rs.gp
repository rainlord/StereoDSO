set term postscript eps enhanced color
set output "06_rs.eps"
set size ratio 0.5
set yrange [0:*]
set xlabel "Speed [km/h]"
set ylabel "Rotation Error [deg/m]"
plot "06_rs.txt" using ($1*3.6):($2*57.3) title 'MINE Rotation Error' lc rgb "#0000FF" pt 4 w linespoints,"06_rs.txt" using ($1*3.6):($3*57.3) title 'ORB_SLAM2 Rotation Error' lc rgb "#00FF00" pt 4 w linespoints
