/*Grab the first two things from the inbox, and drop them into the outbox in reverse.
Repeat until the inbox is empty.*/

-- HUMAN RESOURCE MACHINE PROGRAM --

a:
    INBOX
    COPYTO   2
    INBOX
    OUTBOX
    COPYFROM 2
    OUTBOX
    JUMP     a
