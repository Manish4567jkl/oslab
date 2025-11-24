START:      MVI A,01H       ; Red ON
            OUT 00H
            CALL DELAY10

            MVI A,03H       ; Red + Yellow ON
            OUT 00H
            CALL DELAY2

            MVI A,04H       ; Green ON
            OUT 00H
            CALL DELAY10

            MVI A,02H       ; Yellow ON
            OUT 00H
            CALL DELAY3

            JMP START


; -------- DELAY ROUTINES ---------

DELAY10:    LXI B,0FFFFH
DL1:        DCX B
            MOV A,B
            ORA C
            JNZ DL1
            RET

DELAY3:     LXI B,03FFFH
DL2:        DCX B
            MOV A,B
            ORA C
            JNZ DL2
            RET

DELAY2:     LXI B,02FFFH
DL3:        DCX B
            MOV A,B
            ORA C
            JNZ DL3
            RET
