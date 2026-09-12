; Ender 5 Pro - Nozzle Purge & Clean

M104 S200           ; set nozzle temp
M109 S200           ; wait for nozzle

G28
G90

G1 X10 Y10 Z0.2 F6000
G1 X200 Y10 E15 F300   ; purge line
G1 X200 Y20 E5 F300

M0 Clean nozzle then continue

G1 Z10 F600
G1 X0 Y0 F6000
M117 Purge complete
