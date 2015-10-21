For each two things in the inbox, outbox the remainder that would result if you had
divided the first by the second. Don't worry, you don't actually have to divide.
And don't worry about the negative numbers for now.

-- HUMAN RESOURCE MACHINE PROGRAM --

main:
  INBOX
  COPYTO 0
  INBOX
  COPYTO 1
repeat:
  COPYFROM 0
  SUB 1
  JUMPN done
  JUMPZ zero
  COPYTO 0
  JUMP repeat
done:
  COPYFROM 0
zero:
  OUTBOX
  JUMP main

  
