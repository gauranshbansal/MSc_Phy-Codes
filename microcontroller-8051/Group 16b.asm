; Program to add two numbers and store result
ORG 0000H         ; Start of code

START:
    MOV A, #15H    ; Load first number 
    ADD A, #18H    ; Add second number 

    MOV P1, A      ; Output result to Port 1 (P1.0 - P1.7) for LED display

HERE: SJMP HERE    ; Endless loop to keep result

END
