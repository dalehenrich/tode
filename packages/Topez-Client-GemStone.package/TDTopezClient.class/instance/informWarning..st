as yet unclassified
informWarning: aDescription
  | answer process |
  answer := UIManager default
    confirm: aDescription
    trueChoice: 'Proceed'
    falseChoice: 'Abort'
    cancelChoice: 'Debug'
    default: false.
  answer ifNil: [ ^ #'debug' ].
  answer
    ifTrue: [ ^ #'resume' ].
  process := Processor activeProcess.
  UIManager default spawnNewProcessIfThisIsUI: process.
  process terminate