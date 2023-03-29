DEFINE VARIABLE num AS INTEGER NO-UNDO INITIAL 0.

DO i=0 TO 10:
    SET num = num + 1.
    IF num MOD 2 = 0 THEN
        DISPLAY "The number is even. Number: " + STRING(num)
    ELSE
        DISPLAY "The number is odd. Number: " + STRING(num).
END.