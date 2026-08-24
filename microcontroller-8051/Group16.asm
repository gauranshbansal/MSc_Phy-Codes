; Program to add two numbers and store result
ORG 0000H         ; Start of code

START:
    MOV A, #25H    ; Load first number (37 in decimal)
    ADD A, #17H    ; Add second number (23 in decimal), A = 25H + 17H = 3CH

    MOV P1, A      ; Output result to Port 1 (P1.0 - P1.7) for LED display

HERE: SJMP HERE    ; Endless loop to keep result

END
