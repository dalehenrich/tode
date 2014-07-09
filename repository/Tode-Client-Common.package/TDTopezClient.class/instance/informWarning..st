as yet unclassified
informWarning: aDescription
  | answer process |
  answer := UIManager default
    confirm: (aDescription withNoLineLongerThan: 80)
    trueChoice: 'Proceed'
    falseChoice: 'Abort'
    cancelChoice: 'Debug'
    default: true.
  answer ifNil: [ ^ #'debug' ].
  answer
    ifTrue: [ ^ #'resume' ].
  process := Processor activeProcess.
  UIManager default spawnNewProcessIfThisIsUI: process.
  process terminate