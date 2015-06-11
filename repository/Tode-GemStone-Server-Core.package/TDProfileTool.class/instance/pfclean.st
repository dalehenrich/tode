tode commands
pfclean
  "pf clean"

  self profMonitor
    ifNotNil: [ :profMon | 
      self pfClean: profMon.
      self profMonitor: nil ]