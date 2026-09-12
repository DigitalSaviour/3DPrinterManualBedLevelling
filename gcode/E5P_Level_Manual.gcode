; Ender 5 Pro - Manual Bed Leveling Routine (Stock Creality Firmware Compatible)

M140 S60              ; Set bed temp to 60C
M190 S60              ; Wait for bed to reach temp

G28                   ; Home all axes
G90                   ; Absolute positioning
G1 Z10 F600           ; Lift nozzle

; ---- Front Left ----
G1 X30 Y30 F6000      ; Move to front-left
G1 Z0.2 F600          ; Levelling height
M117 "Front-left corner"
M0 "Adjust front-left screw, then click Continue."

; ---- Front Right ----
G1 Z10 F600
G1 X200 Y30 F6000
G1 Z0.2 F600
M117 "Front-right corner"
M0 "Adjust front-right screw, then click Continue."

; ---- Rear Right ----
G1 Z10 F600
G1 X200 Y200 F6000
G1 Z0.2 F600
M117 "Rear-right corner"
M0 "Adjust rear-right screw, then click Continue."

; ---- Rear Left ----
G1 Z10 F600
G1 X30 Y200 F6000
G1 Z0.2 F600
M117 "Rear-left corner"
M0 "Adjust rear-left screw, then click Continue."

; ---- Center ----
G1 Z10 F600
G1 X115 Y115 F6000
G1 Z0.2 F600
M117 "Center of bed"
M0 "Adjust center, then click Continue."

; ---- Finish ----
G1 Z10 F600
G1 X0 Y0 F6000

G4 S1                 ; Allow LCD to refresh
M117 "Manual leveling complete"
