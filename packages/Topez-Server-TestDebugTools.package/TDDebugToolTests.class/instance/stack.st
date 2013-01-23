as yet unclassified
stack
  | process stack sema |
  sema := TransientSemaphore new.
  process := [ 
  3 + 4.
  sema wait ] fork.
  Processor yield.
  GsFile gciLogServer: 'TDDebugToolTests>>stack: ' , process asOop printString.
  ^ TDStack new
    process: process;
    yourself