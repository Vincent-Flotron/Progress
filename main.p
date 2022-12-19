FUNCTION sort(INPUT list: INTEGER[]): INTEGER[]
    DEFINE VARIABLE i AS INTEGER NO-UNDO.
    DEFINE VARIABLE j AS INTEGER NO-UNDO.
    DEFINE VARIABLE temp AS INTEGER NO-UNDO.
    
    /* Iterate through the list, comparing each element to its neighbors */
    DO i = 1 TO LENGTH(list) - 1:
        DO j = 1 TO LENGTH(list) - i:
            /* If the current element is larger than its neighbor, swap them */
            IF list[j] > list[j+1] THEN
                temp = list[j].
                list[j] = list[j+1].
                list[j+1] = temp.
            END.
        END.
    END.
    
    RETURN list.
END.


DEFINE VARIABLE myList AS INTEGER[] NO-UNDO.
myList = [5, 2, 7, 1, 3].

myList = sort(myList).