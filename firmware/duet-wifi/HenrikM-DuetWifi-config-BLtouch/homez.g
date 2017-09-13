T0                  	; select first hot end
G91                 	; Relative coordinates
G1 Z5 F200          	; Lower bed to avoid hotend dragging in bed.
G90                 	; Absoulte coordinates
G1 X170 Y125 F3000    	; Go to first bed probe point and home the Z axis
M401			; deploy probe
G30                	; Calibrate Z-axis
M402			
G1 Z2 F200          	; Raise bed to 2mm.