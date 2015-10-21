Add together all the numbers in each string.
When you reach the end of a string (marked by a zero),
put your sum in the outbox. Reset and repeat for each string.

-- HUMAN RESOURCE MACHINE PROGRAM --

main:
  INBOX
  JUMPZ fast
  COPYTO 0
repeat:
  INBOX
  JUMPZ zero
  ADD 0
  COPYTO 0
  JUMP repeat
zero:
  COPYFROM 0
fast:
  OUTBOX
  JUMP main
