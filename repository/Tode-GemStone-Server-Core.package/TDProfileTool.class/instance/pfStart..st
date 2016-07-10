smalltalk api
pfStart: intervalNsArg
  | intervalNs |
  intervalNs := intervalNsArg
    ifNil: [ ProfMonitor defaultIntervalNs ]
    ifNotNil: [ intervalNsArg ].
  self
    profMonitor:
      (ProfMonitor new
        intervalNs: intervalNs;
        startMonitoring;
        yourself)