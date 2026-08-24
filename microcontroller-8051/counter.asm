; ---------------------------------------------------------------------
; AT89S52 - 7-Segment single-digit counter 0..9
; P2.0 = segment 'a'  (LSB)
; P2.1 = 'b'
; ...
; P2.6 = 'g'
; P2.7 unused
;
; Uses Timer0 (16-bit mode) to create precise 1 second delay
; Assumes crystal = 11.0592 MHz -> machine cycles/sec = 11.0592/12 = 921,600
; 1 second = 921,600 machine cycles
; 921,600 = 14 * 65536 + 4096
; So we wait 14 full overflows (starting at 0x0000) and one overflow starting at 0xF000 (65536-4096)
; ---------------------------------------------------------------------

            ORG 0000H

;---------------------------
; Lookup table for digits 0-9
; P2 bits:  P2.6 P2.5 P2.4 P2.3 P2.2 P2.1 P2.0  (gfedcba)
; Values are for common-cathode: segment ON = 1
;---------------------------
TABLE:      DB 03FH, 06H, 05BH, 04FH, 066H, 06DH, 07DH, 07H, 07FH, 06FH
;   0       1     2      3      4      5      6     7     8      9

;---------------------------
; Reset/vector start
;---------------------------
START:
            MOV SP, #70H        ; Stack pointer (safe area)
            MOV P2, #00H        ; Clear P2 initially (all segments off)
            MOV TMOD, #01H      ; Timer0 mode 1 (16-bit)
            CLR TR0             ; Ensure Timer0 stopped
            CLR TF0             ; Clear timer overflow flag

            MOV R0, #00H        ; digit index = 0

MAIN_LOOP:
            ; Fetch pattern and output to Port 2
            MOV A, R0
            MOV DPTR, #TABLE
            MOVC A, @A+DPTR     ; A = TABLE[R0]
            MOV P2, A

            ; Delay 1 second using Timer0 overflows
            ACALL DELAY_1S

            ; Advance digit
            INC R0
            MOV A, R0
            CJNE A, #0AH, CONTINUE
            MOV R0, #00H        ; wrap after 9->0
CONTINUE:
            SJMP MAIN_LOOP

;----------------------------------------------------------------
; DELAY_1S - wait exactly 1.000 second (assuming 11.0592 MHz crystal)
; Implementation: 14 full overflows from 0x0000, then 1 overflow from 0xF000.
;----------------------------------------------------------------
DELAY_1S:
            ; Clear TF0 and stop timer just in case
            CLR TR0
            CLR TF0

            MOV R2, #14         ; count of full overflows (14)
FULL_OVF_LOOP:
            ; Load timer to 0x0000 by writing TH0/TL0
            MOV TH0, #00H
            MOV TL0, #00H
            CLR TF0
            SETB TR0            ; start Timer0
WAIT_FULL:
            JNB TF0, WAIT_FULL  ; wait for overflow (TF0=1)
            CLR TR0
            CLR TF0
            DJNZ R2, FULL_OVF_LOOP

            ; Now do final partial overflow: start from 0xF000 so timer needs 4096 counts
            MOV TH0, #0F0H     ; TH0 = 0xF0 (high byte of 0xF000)
            MOV TL0, #00H      ; TL0 = 0x00
            CLR TF0
            SETB TR0
WAIT_PARTIAL:
            JNB TF0, WAIT_PARTIAL
            CLR TR0
            CLR TF0
            RET

;----------------------------------------------------------------
; End of program
;----------------------------------------------------------------
            END START
