as yet unclassified
psKillAll
  | processList currentProcess |
  currentProcess := ProcessorScheduler scheduler activeProcess.
  processList := self psList reject: [ :ps | ps == currentProcess ].
  processList do: [ :ps | self psKill: ps ].
  ^ processList