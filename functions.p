// 1: with RETURN key word
FUNCTION Square RETURNS INTEGER (INPUT num AS INTEGER):
    DEFINE VARIABLE result AS INTEGER NO-UNDO.
    ASSIGN result = num * num.
    RETURN result.
END FUNCTION.

DEFINE VARIABLE number AS INTEGER NO-UNDO.
DEFINE VARIABLE squareResult AS INTEGER NO-UNDO.

ASSIGN number = 5.
ASSIGN squareResult = Square(number).

DISPLAY "The square of " + STRING(number) + " is " + STRING(squareResult) + ".".