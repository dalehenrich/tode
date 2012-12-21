as yet unclassified
signallerFrame
  "Find the first sender of signal(:)"

  ^ currentFrame
    findCFrameSuchThat: [ :frame | (frame receiver == exception or: [ frame receiver == exception class ]) not ]