set timefmt '%Y-%m-%dT%H:%M:%S'
set xdata time
set grid
set title "Concurrent SSH connections"
set xlabel "Date"
set ylabel "Number of SSH connections"
set term png size 950,700
set out 'concurrent.png'
pl 'concurrent_connections.txt' using 1:2 with points pointtype 7 pointsize .2 lc rgb "red"
