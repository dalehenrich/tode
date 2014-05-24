as yet unclassified
pfmonitor: aBlock
  self pfstart.
  aBlock
    ensure: [ self pfstop ]