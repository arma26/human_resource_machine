/*Send everything from the inbox to the outbox, unless you've seen the same value before.
Discard any duplicates.*/

11 = test

-- HUMAN RESOURCE MACHINE PROGRAM --

setup:
  COPYFROM 14
  COPYTO 0
main:
  INBOX
  COPYTO 11
  COPYFROM 14
  SUB 14
  COPYTO 14
repeat:
  COPYFROM [14]
  JUMPZ switch
  SUB 11
  JUMPZ main
  BUMPUP 14
  JUMP repeat
switch:
  COPYFROM 11
  COPYTO [14]
  OUTBOX
  BUMPUP 14
  COPYFROM 14
  SUB 14
  COPYTO [14]
  JUMP main
