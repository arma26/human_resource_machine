For each thing in the inbox,
outbox the sum of itself plus all the numbers down to zero.
For example, if inbox is 3, outbox should be 6, because 3+2+1=6.

-- HUMAN RESOURCE MACHINE PROGRAM --

main:
  INBOX
  COPYTO 0
  COPYTO 1
  JUMPZ zero
do:
  BUMPDN 1
  JUMPZ zero
  COPYFROM 0
  ADD 1
  COPYTO 0
  JUMP do
zero:
  COPYFROM 0
  OUTBOX
  JUMP main
