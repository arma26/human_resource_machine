/*For each thing in the inbox, triple it. And outbox the result.*/

-- HUMAN RESOURCE MACHINE PROGRAM --

a:
    INBOX
    COPYTO   0
    ADD      0
    ADD      0
    OUTBOX
    JUMP     a
