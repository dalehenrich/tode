as yet unclassified
pfstart
  "pf start"

  | profMon |
  self clean.
  profMon := ProfMonitor new.
  self class profMonitor: profMon.
  profMon startMonitoring