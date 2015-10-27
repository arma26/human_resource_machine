/*For each thing in the inbox, multiply it by 8 and put the result in the outbox.*/

-- HUMAN RESOURCE MACHINE PROGRAM --

a:
    INBOX
    COPYTO   0
    ADD      0
    COPYTO   0
    ADD      0
    COPYTO   0
    ADD      0
    OUTBOX
    JUMP     a
