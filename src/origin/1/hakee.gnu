set term latex
set output "~/文档/毕业设计/论文源码/src/plot/1/hakee.tex"
set key bottom right

set xrange[0:]
set yrange[-10:30]

set xlabel "时间/min"
set ylabel "转矩/Nm" rotate by 90

plot "hakee.dat" using 1:2 smooth bezier with lines, "hakee.dat" using 3:4 smooth bezier with lines, "hakee.dat" using 5:6 smooth bezier with lines, "hakee.dat" using 7:8 smooth bezier with lines
