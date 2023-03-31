// DO loop: The DO loop executes a block of code a specified number of times. It uses a counter variable to iterate from a starting value to an ending value.
DO i = 1 TO 5:
    DISPLAY i.
END.


// REPEAT loop: The REPEAT loop executes a block of code indefinitely until a LEAVE or RETURN statement is encountered, or until a certain condition is met using the UNTIL keyword.
DEFINE VARIABLE i AS INTEGER NO-UNDO.

ASSIGN i = 1.

REPEAT:
    DISPLAY i.
    i = i + 1.
    IF i > 5 THEN LEAVE.
END.

// FOR EACH loop: The FOR EACH loop is used to iterate through records in a database table. It automatically fetches records one by one and executes the loop body for each record.
DEFINE VARIABLE customerName AS CHARACTER NO-UNDO.

FOR EACH customers NO-LOCK:
    ASSIGN customerName = customers.name.
    DISPLAY customerName.
END.

// WHILE loop: The WHILE loop executes a block of code as long as the specified condition is TRUE.
DEFINE VARIABLE i AS INTEGER NO-UNDO.

ASSIGN i = 1.

WHILE i <= 5 DO:
    DISPLAY i.
    i = i + 1.
END.











