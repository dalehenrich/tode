accessing
stackFrameClass
  ^ StackFrameClass ifNil: [ StackFrameClass := TDStackFrame ]