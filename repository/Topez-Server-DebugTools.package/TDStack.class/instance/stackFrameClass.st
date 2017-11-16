accessing
stackFrameClass
  ^ stackFrameClass ifNil: [ stackFrameClass := self class stackFrameClass ]