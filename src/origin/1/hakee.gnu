set term latex
set output "src/origin/1/hakee.tex"
set key bottom right

set xrange[0:]
set yrange[-10:30]

set xlabel "时间/min"
set ylabel "转矩/Nm" rotate by 90

plot "src/origin/1/hakee.ori" using 1:2 smooth bezier with lines, "src/origin/1/hakee.ori" using 3:4 smooth bezier with lines, "src/origin/1/hakee.ori" using 5:6 smooth bezier with lines, "src/origin/1/hakee.ori" using 7:8 smooth bezier with lines
