; Ender 5 Pro - Z Offset Tuning (Marlin 2.0.6 Compatible)

M501                 ; Load saved settings from EEPROM
M140 S60             ; Set bed temp
M190 S60             ; Wait for bed temp

G28                  ; Home all axes
G90                  ; Absolute positioning
G1 Z10 F600          ; Lift nozzle

; Move to center of bed
G1 X115 Y115 F6000
G1 Z0.2 F600

; --- User Adjustment Phase ---
M117 "Adjust Z-offset now"
M0 "Use paper test. Baby-step Z until perfect, then click Continue."

; --- Save Phase ---
G4 S1                ; Allow LCD to refresh after pause
M117 "Saving Z-offset..."
M500                 ; Save new settings to EEPROM

G4 S1                ; Allow LCD to refresh after EEPROM write
M117 "Z-offset saved"

; --- Finish Up ---
G1 Z10 F600
G1 X0 Y0 F6000

M117 "Z-offset tuning complete"
