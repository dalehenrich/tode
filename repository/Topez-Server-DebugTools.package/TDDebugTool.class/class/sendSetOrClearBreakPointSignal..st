remote breakpoints
sendSetOrClearBreakPointSignal: aString
  Transcript
    cr;
    show:
        'sendSetOrClearBreakPointSignal: [0]: '
            , self remoteBreakpointsEnabled printString.
  self remoteBreakpointsEnabled
    ifFalse: [ ^ self ].
  SetOrClearBreakpointAnnouncement broadcastMessage: aString