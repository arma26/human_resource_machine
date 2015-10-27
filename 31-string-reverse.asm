/*For each zero terminated string in the inbox,
reverse it and put the result in the outbox. Repeat!*/

-- HUMAN RESOURCE MACHINE PROGRAM --

main:
  INBOX
  COPYTO [14]
  BUMPUP 14
increase:
  INBOX
  JUMPZ decrease
  COPYTO [14]
  BUMPUP 14
  JUMP increase
decrease:
  BUMPDN 14
  JUMPN increase
  COPYFROM [14]
  JUMPZ increase
  OUTBOX
  JUMP decrease
