smalltalk api
pfStop: aProfMonitor
  aProfMonitor endTime ~~ nil
    ifTrue: [ ^ self ].
  aProfMonitor stopMonitoring