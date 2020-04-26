reset


set pm3d
set xlabel "Posição em X"
set ylabel "Posição em Y"
set zlabel "Potencial"
set title "Quadrado de Potencial"
set terminal "pngcairo" size 1024,768


set output "Quadrado_de_Potencial.png"
#set size ratio -1
set grid lw 2
splot "quad_poten.dat" w l t "Potência Elétrica"
set output
set terminal "qt"
