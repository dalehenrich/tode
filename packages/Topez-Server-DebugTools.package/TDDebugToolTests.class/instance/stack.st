as yet unclassified
stack
  | process stack sema |
  sema := TransientSemaphore new.
  process := [ 
  3 + 4.
  sema wait ] fork.
  Processor yield.
  process suspend.
  ^ TDStack new
    process: process;
    yourself