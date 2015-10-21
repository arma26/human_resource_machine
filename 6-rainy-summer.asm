/*For each two things in the inbox, add them together, and put the result in the outbox.*/

-- HUMAN RESOURCE MACHINE PROGRAM --

a:
    INBOX
    COPYTO   0
    INBOX
    ADD      0
    OUTBOX
    JUMP     a
