smalltalk api
pfMonitor: aProfMon block: aBlock
  self pfStart: aProfMon.
  aBlock
    ensure: [ self pfStop: aProfMon ]