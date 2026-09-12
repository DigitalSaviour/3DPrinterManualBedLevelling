; Ender 5 Pro - Auto Bed Mesh Generation
; Requires ABL (CRTouch/BLTouch) enabled in firmware

M140 S60
M190 S60

G28
G29                 ; auto bed leveling mesh

M117 Mesh complete
G1 X0 Y0 Z10 F6000
