#!/usr/bin/gnuplot
set terminal eps font 'Verdana,14'
set output 'bipartition.eps'

set title 'Comparative scaling: time vs. input size'
set ylabel 'Time (seconds)'
set xlabel 'Vertices + edges'

set key top left

plot 'bipartition.time' u 5:4 t 'metis' w lines lt 1,\
'' u 5:4:1 with labels notitle,\
'' u 5:2 t 'fennel' w lines lt 2,\
'' u 5:3 t 'sheep: 6 workers' w lines lt 3,\
'' u 5:3:1 with labels notitle

