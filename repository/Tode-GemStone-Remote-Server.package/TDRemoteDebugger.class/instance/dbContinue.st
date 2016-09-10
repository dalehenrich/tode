debug ops
dbContinue
  | processOop stack res |
  stack := self theStack.
  processOop := stack processOop.
  self topez disableSessionMethods.
  self session continue: processOop.
  ^ #'close'