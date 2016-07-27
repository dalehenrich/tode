tode commands
pfstart
  "
  pf start [--computeInterval=<cpu-time-seconds>]
"

  | intervalNs |
  self getSubcommandOptsMixedLongShort: {#('computeInterval' nil #'required')}.
  intervalNs := subOptions
    at: 'computeInterval'
    ifPresent: [ :arg | ProfMonitor computeInterval: arg asNumber ]
    ifAbsent: [ ProfMonitor defaultIntervalNs ].
  self pfclean.
  self pfStart: intervalNs