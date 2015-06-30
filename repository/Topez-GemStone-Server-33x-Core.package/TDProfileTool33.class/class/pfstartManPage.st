pf
pfstartManPage
  "Additional options for pf start command in GemStone 3.3"

  | manPage |
  manPage := TDManPage
    commandName: 'start'
    fromString:
      'NAME
  pf start - Begin sampling data

SYNOPSIS
  pf start [--sampling=cpu|real] [--tally=[execTime|objFaults|pageFaults|edenUsage|gcTime|objCreation]

DESCRIPTION
  Note that profiling of page faults and object faults will detect
  the change in the number of faults at start of a method.
  Thus a sample at the start of a method will be seeing deltas
  from execution of the previous method.
  Total faults will be correctly attributed to the caller of the method being entered.

OPTIONS
  --sampling=cpu|real
    elapsed time measured as cpu or real time. Default is cpu.

  --tally=execTime|objFaults|pageFaults|edenUsage|gcTime|objCreation
    edenUsage
    execTime   
    gcTime     
    objFaults
    objCreation
    pageFaults
 
EXAMPLES
  pf start
  pf start --sampling=cpu
  pf start --sampling=real
  pf start --tally=execTime
  pf start --tally=objCreation
  pf start --tally=objFaults
  pf start --tally=pageFaults
  pf start --tally=edenUsage
  pf start --tally=gcTime
'.
  ^ manPage