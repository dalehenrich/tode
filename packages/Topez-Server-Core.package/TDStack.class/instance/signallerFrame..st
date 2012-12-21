as yet unclassified
signallerFrame: startingFrame
  "Find the first sender of signal(:)"

  ^ startingFrame
    findFrameSuchThat: [ :frame | (frame receiver == self exception or: [ frame receiver == self exception class ]) not ]