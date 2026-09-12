; Ender 5 Pro - Manual Bed Leveling Routine

M140 S60              ; set bed temp to 60C
M190 S60              ; wait for bed to reach temp

G28                   ; home all axes
G90                   ; absolute positioning
G1 Z10 F600           ; lift nozzle

; ---- Front Left ----
G1 X30 Y30 F6000      ; move to front-left
G1 Z0.2 F600          ; levelling height
M0 Adjust front-left screw then continue

; ---- Front Right ----
G1 Z10 F600
G1 X200 Y30 F6000
G1 Z0.2 F600
M0 Adjust front-right screw then continue

; ---- Rear Right ----
G1 Z10 F600
G1 X200 Y200 F6000
G1 Z0.2 F600
M0 Adjust rear-right screw then continue

; ---- Rear Left ----
G1 Z10 F600
G1 X30 Y200 F6000
G1 Z0.2 F600
M0 Adjust rear-left screw then continue

; ---- Center ----
G1 Z10 F600
G1 X115 Y115 F6000
G1 Z0.2 F600
M0 Adjust center then continue

G1 Z10 F600
G1 X0 Y0 F6000
M117 Manual leveling complete
