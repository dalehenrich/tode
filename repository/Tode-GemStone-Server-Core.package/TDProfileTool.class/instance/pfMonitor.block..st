smalltalk api
pfMonitor: aProfMon block: aBlock
  aProfMon startMonitoring.
  aBlock
    ensure: [ self pfStop: aProfMon ]