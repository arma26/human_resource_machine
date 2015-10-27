/*For each zero terminated string in the inbox, send to
the outbox only the smallest number you've seen in that
string. You will never be given an empty string. Reset
and repeat for each string.*/

-- HUMAN RESOURCE MACHINE PROGRAM --

main:
  INBOX
  JUMPZ smallest
  COPYTO 0
repeat:
  INBOX
  JUMPZ smallest
  COPYTO 1
  SUB 0
  JUMPN switch
  JUMP repeat
smallest:
  COPYFROM 0
  OUTBOX
  JUMP main
switch:
  COPYFROM 1
  COPYTO 0
  JUMP repeat
