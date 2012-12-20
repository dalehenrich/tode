as yet unclassified
lookupProcess: processIndex
  | processes process |
  processes := ProcessorScheduler scheduler allProcesses asArray.
  process := processes at: processIndex asNumber.
  ^ process