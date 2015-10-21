/*For each TWO things in the INBOX:

Send 0 to the OUTBOX if they have the same sign. (Both
positive or both negative.)

Send a 1 to the OUTBOX if their signs are different.
Repeat until the INBOX is empty.

neg = 1
pos = 0

simple XOR*/

-- HUMAN RESOURCE MACHINE PROGRAM --

    main:
    		INBOX
    		JUMP neg0
    		JUMP pos0
    step2:
    		INBOX
    		JUMP neg1
    		JUMP pos1
    step3:
    		COPYFROM 0
    		ADD 1
        JUMPZ
    		JUMP main
    neg0:
    		COPYFROM 5
    		COPYTO 0
    		JUMP step2
    neg1:
    		COPYFROM 5
    		COPYTO 1
    		JUMP step3
    pos0:
    		COPYFROM 4
    		COPYTO 0
    		JUMP step2
    pos1:
    		COPYFROM 4
    		COPYTO 1
    		JUMP step3
    same:
    		COPYFROM 4
    		OUTBOX
    		JUMP main
    diff:
    		COPYFROM 5
    		OUTBOX
    		JUMP main
