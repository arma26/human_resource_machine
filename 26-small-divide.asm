/*For each two things in the inbox, how many times does the second fully fit
into the first? Don't worry, about negative numbers, divide by zero, or remainders.*/

-- HUMAN RESOURCE MACHINE PROGRAM --

main:
  INBOX
  COPYTO 0
  INBOX
  COPYTO 1
  COPYFROM 9
  COPYTO 8
repeat:
  COPYFROM 0
  SUB 1
  JUMPN done
  JUMPZ zero
  COPYTO 0
  BUMPUP 8
  JUMP repeat
zero:
  BUMPUP 8
done:
  COPYFROM 8
  OUTBOX
  JUMP main
