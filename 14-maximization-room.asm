/*Grab two things from the inbox, and put only the bigger of the two in the outbox.
If they are equal, just pick either one. Repeat!*/

-- HUMAN RESOURCE MACHINE PROGRAM --

a:
b:
    INBOX
    COPYTO   0
    INBOX
    COPYTO   1
    SUB      0
    JUMPN    c
    JUMPZ    d
    COPYFROM 1
    OUTBOX
    JUMP     a
c:
d:
    COPYFROM 0
    OUTBOX
    JUMP     b
