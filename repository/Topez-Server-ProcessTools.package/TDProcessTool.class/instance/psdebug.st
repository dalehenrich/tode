as yet unclassified
psdebug
  "ps debug @<process-path>"

  | process tool |
  process := self resolveAtPathReference: (tokens at: 2).
  tool := self topez toolInstanceFor: 'db'.
  tool debug: process.
  ^ process