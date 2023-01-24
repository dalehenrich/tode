*tode-gemstone-core3x
gsMfc: threads wait: wait buffer: buffer cpu: cpu
  Transcript
    cr;
    show: '---Starting mark for collect. (';
    show: TimeStamp now asString;
    show: ')'.
  [ 
  SystemRepository
    markForCollectionWithMaxThreads: threads
    waitForLock: wait
    pageBufSize: buffer
    percentCpuActiveLimit: cpu ]
    on: Error , Warning
    do: [ :ex | 
      ((ex isKindOf: Warning) or: [ ex gsNumber == 3020 or: [ ex gsNumber == 3006 ] ])
        ifTrue: [ 
          self freeSpaceLogEntry: ex.
          Transcript
            cr;
            tab;
            show: ex description ]
        ifFalse: [ ex pass ] ].
  Transcript
    cr;
    show: '---Finished mark for collect. (';
    show: TimeStamp now asString;
    show: ')'