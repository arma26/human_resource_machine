Send everything from the inbox to the outbox, except for vowels.

6 = iterator
7 = inbox

-- HUMAN RESOURCE MACHINE PROGRAM --

setup:
  INBOX
  COPYTO 7
  COPYFROM 5
  COPYTO 6
main:
  COPYFROM [6]
  JUMPZ zero
  SUB 7
  JUMPZ break
  BUMPUP 6
  JUMP main
break:
  JUMP setup
zero:
  COPYFROM 7
  OUTBOX
  JUMP setup
