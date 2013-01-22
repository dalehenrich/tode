as yet unclassified
windowBuilderTestFixture
  "object aspect windowId expected"

  | process stack frame |
  process := [ 
  3 + 4.
  (Delay forSeconds: 1) wait ] fork.
  Processor yield.
  process suspend.
  stack := TDStack new
    process: process;
    yourself.
  frame := stack currentFrame.
  ^ {{stack.
  #'edit'.
  nil.
  ''}.
  {frame.
  #'edit'.
  nil.
  ''}}