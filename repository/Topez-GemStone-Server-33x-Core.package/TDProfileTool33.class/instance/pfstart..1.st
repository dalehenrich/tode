tode commands
pfstart
  "
  pf start [--sampling=cpu|real] [--computeInterval=<cpu-time-seconds>] \
           [--tally=[execTime|objFaults|pageFaults|edenUsage|gcTime|objCreation]
"

  | sampling tally intervalNs |
  self
    getSubcommandOptsMixedLongShort:
      {#('computeInterval' nil #'required').
      #('sampling' nil #'required').
      #('tally' nil #'required')}.
  subOptions at: 'sampling' ifPresent: [ :arg | sampling := arg ].
  subOptions at: 'tally' ifPresent: [ :arg | tally := arg ].
  intervalNs := subOptions
    at: 'computeInterval'
    ifPresent: [ :arg | ProfMonitor computeInterval: arg asNumber ]
    ifAbsent: [ ProfMonitor defaultIntervalNs ].
  self pfclean.
  self pfStart: sampling tally: tally intervalNs: intervalNs