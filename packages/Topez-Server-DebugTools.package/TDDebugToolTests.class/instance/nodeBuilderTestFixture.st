as yet unclassified
nodeBuilderTestFixture
  "object aspect expected"

  | stack frame |
  stack := TDStack new.
  frame := stack currentFrame.
  ^ {{stack.
  #'edit'.
  '/ ([TDStack] UndefinedObject(oop=20, status=...problem printing process)):
'}.
  {frame.
  #'edit'.
  '/ ([TDStackFrame] error printing):
'}}