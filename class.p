// Define a class
CLASS Person:
    DEFINE PRIVATE VARIABLE cName AS CHARACTER NO-UNDO.
    DEFINE PUBLIC VARIABLE cAge AS INTEGER NO-UNDO.

    CONSTRUCTOR PUBLIC Person(INPUT pName AS CHARACTER):
        ASSIGN cName = pName.
    END CONSTRUCTOR.

    METHOD PUBLIC CHARACTER GetName():
        RETURN cName.
    END METHOD.

    METHOD PUBLIC VOID SetName(INPUT pName AS CHARACTER):
        ASSIGN cName = pName.
    END METHOD.

    METHOD PUBLIC VOID SayHello():
        DISPLAY "Hello, My name is " + cName.
    END METHOD.

    METHOD PUBLIC VOID SayMyAge():
        DISPLAY "I'm " + cAge + ".".
    END METHOD. 
END CLASS.


// Instanciate an object of the class Person
DEFINE VARIABLE myPerson AS CLASS Person NO-UNDO.

myPerson = NEW Person("John Doe").
DISPLAY myPerson:GetName().
myPerson:SayHello().
myPerson:cAge = 25.
myPerson:SayMyAge().
