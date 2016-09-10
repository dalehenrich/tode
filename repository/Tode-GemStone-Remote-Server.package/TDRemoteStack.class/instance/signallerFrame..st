as yet unclassified
signallerFrame: startingFrame
  "Find the first sender of signal(:)"

  self exceptionOop ifNil: [ ^ nil ].
  ^ startingFrame
    findFrameSuchThat: [ :frame | 
      (frame receiverOop == self exceptionOop
        or: [ frame receiverOop == self exceptionClass ]) not ]