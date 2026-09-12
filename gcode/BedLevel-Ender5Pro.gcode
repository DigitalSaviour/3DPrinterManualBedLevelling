; -----------------------------------------
; Ender 5 Pro - Manual Bed Leveling Routine
; -----------------------------------------

M140 S60          ; set bed temp to 60C
M190 S60          ; wait for bed to reach temp

G28               ; home all axes
G90               ; absolute positioning
G1 Z10 F600       ; lift nozzle

; ---- Levelling Point 1 (Front Left) ----
G1 X30 Y30 F6000  ; move to front-left corner
G1 Z0.2 F600      ; move nozzle to levelling height
M0 Click to continue to next point

; ---- Levelling Point 2 (Front Right) ----
G1 Z10 F600
G1 X200 Y30 F6000 ; move to front-right corner
G1 Z0.2 F600
M0 Click to continue to next point

; ---- Levelling Point 3 (Rear Right) ----
G1 Z10 F600
G1 X200 Y200 F6000
G1 Z0.2 F600
M0 Click to continue to next point

; ---- Levelling Point 4 (Rear Left) ----
G1 Z10 F600
G1 X30 Y200 F6000
G1 Z0.2 F600
M0 Click to continue to next point

; ---- Center of Bed ----
G1 Z10 F600
G1 X115 Y115 F6000 ; center point (adjust if your bed size differs)
G1 Z0.2 F600
M0 Level center then click to finish

; ---- End Routine ----
G1 Z10 F600
G1 X0 Y0 F6000
M117 Bed leveling complete
