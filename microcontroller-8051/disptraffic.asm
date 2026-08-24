;---------------------------------------------------
; SINGLE TRAFFIC LIGHT + 7-SEGMENT COUNTER
; Microcontroller: AT89S52
; Clock: 11.0592 MHz (12 clocks/mc)
; Port 1: LEDs (P1.0=RED, P1.1=YELLOW, P1.2=GREEN)
; Port 2: 7-seg display (common cathode)
;---------------------------------------------------

ORG 0000H
SJMP START

;---------------------------------------------------
; 7-seg digit patterns for 0-9 (common cathode)
;---------------------------------------------------
SEG_TABLE:
    DB  07Eh, 006h, 05Bh, 04Fh, 066h, 06Dh, 07Dh, 007h, 07Fh, 06Fh

;---------------------------------------------------
; START
;---------------------------------------------------
START:
    MOV P1, #00H     ; Turn OFF all LEDs
    MOV P2, #00H     ; All segments OFF initially

MAIN_LOOP:

    ; === GREEN for 10 seconds ===
    SETB P1.2        ; Green ON
    CLR  P1.0
    CLR  P1.1
    MOV  R5, #10     ; Seconds counter
GREEN_COUNT:
    MOV  A, R5
    ACALL DISPLAY_DIGIT
    ACALL DELAY1S
    DJNZ R5, GREEN_COUNT

    ; === YELLOW for 3 seconds ===
    SETB P1.1
    CLR  P1.2
    CLR  P1.0
    MOV  R5, #3
YELLOW_COUNT:
    MOV  A, R5
    ACALL DISPLAY_DIGIT
    ACALL DELAY1S
    DJNZ R5, YELLOW_COUNT

    ; === RED for 10 seconds ===
    SETB P1.0
    CLR  P1.1
    CLR  P1.2
    MOV  R5, #10
RED_COUNT:
    MOV  A, R5
    ACALL DISPLAY_DIGIT
    ACALL DELAY1S
    DJNZ R5, RED_COUNT

    SJMP MAIN_LOOP

;---------------------------------------------------
; DISPLAY_DIGIT: A = digit 0-9 ? outputs to Port 2
;---------------------------------------------------
DISPLAY_DIGIT:
    MOV  DPTR, #SEG_TABLE
    MOVC A, @A+DPTR  ; Lookup pattern from table
    MOV  P2, A       ; Output to 7-seg
    RET

;---------------------------------------------------
; Calibrated ~1s delay @ 11.0592 MHz
;---------------------------------------------------
DELAY1S:
    MOV R2, #08
D1: MOV R1, #240
D2: MOV R0, #240
D3: DJNZ R0, D3
    DJNZ R1, D2
    DJNZ R2, D1
    RET

;---------------------------------------------------
; Multi-second delays (use DELAY1S)
;---------------------------------------------------
; Not needed now — we count seconds manually for display

END
