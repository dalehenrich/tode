as yet unclassified
signallerFrame: startingFrame
  "Find the first sender of signal(:)"

  self exception ifNil: [ ^ nil ].
  ^ startingFrame
    findFrameSuchThat: [ :frame | 
      (frame receiver == self exception or: [ frame receiver == self exception class ])
        not ]