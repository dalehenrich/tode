tode commands
pfstart
  "
  pf start [--sampling=cpu|real] [--tally=[execTime|objFaults|pageFaults|edenUsage|gcTime|objCreation]
"

  | sampling tally |
  self
    getSubcommandOptsMixedLongShort:
      {#('sampling' nil #'required').
      #('tally' nil #'required')}.
  subOptions at: 'sampling' ifPresent: [ :arg | sampling := arg ].
  subOptions at: 'tally' ifPresent: [ :arg | tally := arg ].
  self pfclean.
  self class profMonitor: (self pfStart: sampling tally: tally)