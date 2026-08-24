;---------------------------------------------------
; SINGLE TRAFFIC LIGHT CONTROLLER (FIXED DELAYS)
; Microcontroller: AT89S52 (8051 core)
; Clock: 11.0592 MHz (classic 8051: 12 clocks/machine cycle)
; Port: P1.0 = RED, P1.1 = YELLOW, P1.2 = GREEN
;---------------------------------------------------

ORG 0000H         ; Program starts at memory address 0
SJMP START        ; Jump to START section of program

;---------------------------------------------------
; START OF PROGRAM
;---------------------------------------------------
START:
    MOV P1, #00H      ; Turn OFF all LEDs at the beginning

MAIN_LOOP:

    ; === GREEN LIGHT ON (10 seconds) ===
    SETB P1.2         ; Turn ON Green LED
    CLR  P1.0         ; Make sure Red is OFF
    CLR  P1.1         ; Make sure Yellow is OFF
    ACALL DELAY10S    ; Wait for 10 seconds

    ; === YELLOW LIGHT ON (3 seconds) ===
    SETB P1.1         ; Turn ON Yellow LED
    CLR  P1.2         ; Turn OFF Green
    CLR  P1.0         ; Keep Red OFF for now
    ACALL DELAY3S     ; Wait for 3 seconds

    ; === RED LIGHT ON (10 seconds) ===
    SETB P1.0         ; Turn ON Red LED
    CLR  P1.1         ; Turn OFF Yellow
    CLR  P1.2         ; Turn OFF Green
    ACALL DELAY10S    ; Wait for 10 seconds

    SJMP MAIN_LOOP    ; Go back and repeat forever

;---------------------------------------------------
; DELAY SUBROUTINES (Calibrated for ~1s @ 11.0592 MHz)
;---------------------------------------------------

; ~1.006 s delay with R2=8, R1=240, R0=240
DELAY1S:
    MOV R2, #08       ; Outer loop
D1: MOV R1, #240      ; Middle loop
D2: MOV R0, #240      ; Inner loop
D3: DJNZ R0, D3
    DJNZ R1, D2
    DJNZ R2, D1
    RET

; ~3 second delay
DELAY3S:
    MOV R7, #3
DL3: ACALL DELAY1S
    DJNZ R7, DL3
    RET

; ~10 second delay
DELAY10S:
    MOV R7, #10
DL10: ACALL DELAY1S
    DJNZ R7, DL10
    RET

END
