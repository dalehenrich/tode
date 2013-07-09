as yet unclassified
pskill9
  "ps kill9 @<process-path>"

  ^ (self resolveAtPathReference: (tokens at: 2)) psterminate9