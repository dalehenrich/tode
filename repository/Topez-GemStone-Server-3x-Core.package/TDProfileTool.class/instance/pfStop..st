smalltalk api
pfStop: aProfMonitor
  aProfMonitor ifNil: [ ^ self ].
  aProfMonitor endTime ~~ nil
    ifTrue: [ ^ self ].
  aProfMonitor stopMonitoring