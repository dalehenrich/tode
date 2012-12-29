exceptiondescription
customDefaultAction
  | answer process |
  answer := UIManager default
    confirm: self exceptionProxy header printString
    trueChoice: 'Proceed'
    falseChoice: 'Abort'
    cancelChoice: 'Debug'
    default: false.
  answer
    ifNil: [ 
      ^ {#'debug'.
      self} ].
  answer
    ifTrue: [ ^ #'resume' ].
  process := Processor activeProcess.
  UIManager default spawnNewProcessIfThisIsUI: process.
  process terminate