as yet unclassified
pfmonitor: aBlock
  | profMon |
  self pfstart.
  aBlock
    ensure: [ self pfstop ].
  ^ profMon