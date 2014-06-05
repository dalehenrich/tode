as yet unclassified
breakClearBreakpoints
  self remoteBreakpointsEnabled
    ifTrue: [ self class sendClearAllBreaksSignal ].
  ^ self gsMethodClass clearAllBreaks