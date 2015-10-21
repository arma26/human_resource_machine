/*Each thing in the inbox is an address of a tile on the floor.
For each address provided in the inbox,
outbox the requested item from the floor and all following items
on the floor until reach zero. Repeat!*/

-- HUMAN RESOURCE MACHINE PROGRAM --

a:
    INBOX
    COPYTO   24
    COPYFROM [24]
    OUTBOX
b:
    BUMPUP   24
    COPYFROM [24]
    JUMPZ    c
    OUTBOX
    JUMP     b
c:
    JUMP     a
