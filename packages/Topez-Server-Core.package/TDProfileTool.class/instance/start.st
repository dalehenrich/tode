as yet unclassified
start
  "pf start"

  | profMon |
  self clean.
  profMon := ProfMonitor new.
  self class profMonitor: profMon.
  profMon startMonitoring