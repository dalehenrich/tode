as yet unclassified
clearRemoteBreakpoint: meth step: stepPoint
  | cls sel |
  self remoteBreakpointsEnabled
    ifFalse: [ ^ self ].
  cls := meth inClass.
  sel := meth selector.
  self class
    sendSetOrClearBreakPointSignal:
      '(' , cls name , ' compiledMethodAt: ' , sel printString
        , ') clearBreakAtStepPoint: ' , stepPoint asString