as yet unclassified
testNodeView
  "object aspect expected"

  | stack frame |
  stack := TDStack new.
  frame := stack currentFrame.
  self
    executeNodeBuilderSpecs:
      {{stack.
      #'view'.
      'debug/ ([TDStack] UndefinedObject(oop=20, status=...problem printing process)):
'}.
      {frame.
      #'view'.
      'nil/ ([TDStackFrame] error printing):
'}}