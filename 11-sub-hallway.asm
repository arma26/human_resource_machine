/*For each two things in the inbox, first subtract the 1st from the 2nd and
put the result in the outbox. And then, subtract the 2nd from the 1st and
put the result in the outbox. Repeat.*/

-- HUMAN RESOURCE MACHINE PROGRAM --

a:
    INBOX
    COPYTO   0
    INBOX
    COPYTO   1
    SUB      0
    COPYTO   2
    OUTBOX
    COPYFROM 0
    SUB      1
    OUTBOX
    JUMP     a
