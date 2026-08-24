ORG 0x00       ; Program start address

START:
    MOV P1, #0AAH    ; Turn ON LEDs at even positions (10101010)
    ACALL DELAY
    MOV P1, #055H    ; Turn ON LEDs at odd positions (01010101)
    ACALL DELAY
    SJMP START       ; Loop forever

; Simple delay routine
DELAY:
    MOV R2, #0FFH    ; Outer loop count
DELAY1:
    MOV R1, #0FFH    ; Inner loop count
DELAY2:
    DJNZ R1, DELAY2
    DJNZ R2, DELAY1
    RET

END
