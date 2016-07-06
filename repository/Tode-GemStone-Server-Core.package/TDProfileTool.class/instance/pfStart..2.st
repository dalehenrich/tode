smalltalk api
pfStart
  self
    profMonitor:
      (ProfMonitor new
        startMonitoring;
        yourself)