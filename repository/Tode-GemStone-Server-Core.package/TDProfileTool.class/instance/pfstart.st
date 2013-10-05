as yet unclassified
pfstart
  "pf start"

  | profMon |
  self pfclean.
  profMon := ProfMonitor new.
  self class profMonitor: profMon.
  profMon startMonitoring