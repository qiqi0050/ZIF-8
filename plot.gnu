set term epslatex


set output "src/origin/1/hakee.tex"

unset key
set key bottom right box

set xrange[0:]
set yrange[-10: 30]

set xlabel '时间/min'
set ylabel '转矩/N$\cdot$m'

plot "src/origin/1/hakee.ori" using 1:2 title 'AC-316' smooth bezier with lines, "src/origin/1/hakee.ori" using 3:4 title 'AC-617' smooth bezier with lines, "src/origin/1/hakee.ori" using 5:6 title 'AC-629' smooth bezier with lines, "src/origin/1/hakee.ori" using 7:8 title 'PEW-0380' smooth bezier with lines


set output "src/origin/1/tg.tex"

unset key
set key top left box

set xrange[40: 200]
set yrange[0: 1]

set xlabel '温度/\cd'
set ylabel '损耗角正切'

plot "src/origin/1/tg.ori" using 1:2 title 'AC-316' smooth bezier with lines, "src/origin/1/tg.ori" using 1:3 title 'AC-617' smooth bezier with lines, "src/origin/1/tg.ori" using 1:4 title 'AC-629' smooth bezier with lines, "src/origin/1/tg.ori" using 1:5 title 'PEW-0380' smooth bezier with lines


set output "src/origin/2/tg.tex"

unset key
set key top left box

set xrange[40: 200]
set yrange[0: 1]

set xlabel '温度/\cd'
set ylabel '损耗角正切'

plot "src/origin/2/tg.ori" using 1:2 title 'PEW-0380/G-60' smooth bezier with lines, "src/origin/2/tg.ori" using 1:3 title 'A/OA2' smooth bezier with lines, "src/origin/2/tg.ori" using 1:4 title 'A/E' smooth bezier with lines, "src/origin/2/tg.ori" using 1:5 title 'OP/OA2' smooth bezier with lines, "src/origin/2/tg.ori" using 1:6 title 'OP/E' smooth bezier with lines


set output "src/origin/3/hakee.tex"

unset key
set key bottom right box

set xrange[0: 11]
set yrange[0: 20]

set xlabel '时间/min'
set ylabel '转矩/N$\cdot$m'

plot "src/origin/3/hakee.ori" using 1:2 title 'TMG-234' smooth bezier with lines, "src/origin/3/hakee.ori" using 3:4 title 'T-190 A' smooth bezier with lines, "src/origin/3/hakee.ori" using 5:6 title 'Orgin Tin(l)' smooth bezier with lines


set output "src/origin/3/tg.tex"

unset key
set key top left box

set xrange[40: 200]
set yrange[0: 1]

set xlabel '温度/\cd'
set ylabel '损耗角正切'

plot "src/origin/3/tg.ori" using 1:2 title 'TMG-234' smooth bezier with lines, "src/origin/3/tg.ori" using 1:3 title 'T-190 A' smooth bezier with lines, "src/origin/3/tg.ori" using 1:4 title 'Orgin Tin(l)' smooth bezier with lines
