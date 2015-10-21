/*For each thing in the inbox, send to the outbox the full
Fibonacci Sequence up to, but not exceeding that value.
For example, if inbox is 10, outbox should be 1 1 2 3 5 8.

7 = a
8 = b
3 = c
4 = inbox

int fib(int n)
{
  int a = 1, b = 1;
  for (int i = 3; i <= n; i++) {
    int c = a + b;
    a = b;
    b = c;
  }
  return b;
 }*/

-- HUMAN RESOURCE MACHINE PROGRAM --

setup:
  COPYFROM 9
  COPYTO 8
  COPYTO 7
  BUMPUP 8
  BUMPUP 7
  INBOX
  COPYTO 4
cheat:
  COPYFROM 8
  OUTBOX
  COPYFROM 8
  OUTBOX
main:
  COPYFROM 7
  ADD 8
  COPYTO 3
  SUB 4
  JUMPZ next
  JUMPN next
  JUMP setup
next:
  COPYFROM 3
  OUTBOX
  COPYFROM 8
  COPYTO 7
  COPYFROM 3
  COPYTO 8
  JUMP main
