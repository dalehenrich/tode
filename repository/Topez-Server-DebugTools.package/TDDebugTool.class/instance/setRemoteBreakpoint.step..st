as yet unclassified
setRemoteBreakpoint: meth step: stepPoint
  | cls sel |
  self remoteBreakpointsEnabled
    ifFalse: [ ^ self ].
  cls := meth inClass.
  sel := meth selector self class
    sendSetOrClearBreakPointSignal:
      cls name , ' _setMethodBreak: ' , sel printString , ' stepPoint: '
        , stepPoint asString