as yet unclassified
psTerminateAll
  | processList currentProcess |
  currentProcess := ProcessorScheduler scheduler activeProcess.
  processList := self psList reject: [ :ps | ps == currentProcess ].
  processList
    do: [ :ps | 
      ps notNil
        ifTrue: [ self psTerminate: ps ] ].
  ^ processList