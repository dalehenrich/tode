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
  pf start [--sampling=cpu|real] [--tally=[execTime|objFaults|pageFaults|edenUsage|gcTime]

DESCRIPTION

OPTIONS

  --sampling=cpu|real
    elapsed time measured as cpu or real time. Default is cpu.

  --tally=execTime|objFaults|pageFaults|edenUsage|gcTime
    edenUsage
    execTime   
    gcTime     
    objFaults
    pageFaults
 
EXAMPLES
  pf start
  pf start --sampling=cpu
  pf start --sampling=real
  pf start --tally=execTime
  pf start --tally=objFaults
  pf start --tally=pageFaults
  pf start --tally=edenUsage
  pf start --tally=gcTime
'.
  ^ manPage