; Ender 5 Pro - Z Offset Tuning

M140 S60
M190 S60

G28
G90
G1 Z10 F600

; Move to center
G1 X115 Y115 F6000
G1 Z0.2 F600

M117 Adjust Z-offset using baby-stepping
M0 Use paper test, adjust Z until perfect, then continue

G1 Z10 F600
G1 X0 Y0 F6000
M117 Z-offset tuning complete
