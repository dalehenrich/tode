as yet unclassified
psterminate
  "ps terminate <process-oop>"

  ^ (self resolveAtPathReference: (tokens at: 2)) terminate