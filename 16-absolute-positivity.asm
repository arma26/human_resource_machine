Send each thing from the INBOX to the OUTBOX.
BUT, if a number is negative, first remove it's negative sign.

0 size x speed
-- HUMAN RESOURCE MACHINE PROGRAM --

main:
  INBOX
  JUMPN neg
  OUTBOX
JUMP main
neg:
  COPYTO 0
  SUB 0
  SUB 0
  OUTBOX
  JUMP main
