as yet unclassified
signallerFrame: startingFrame
  "Find the first sender of signal(:)"

  self exception ifNil: [ ^ nil ].
  ^ startingFrame
    findFrameSuchThat: [ :frame | 
      (frame theSelf == self exception or: [ frame theSelf == self exception class ])
        not ]