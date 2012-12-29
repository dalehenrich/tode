exceptiondescription
defaultAction
  | evaluator answer process |
  evaluator := self exceptionProxy topez evaluator.
  evaluator exception: self exceptionProxy.
  answer := UIManager default
    confirm: self class name asString , ' defaultAction: ' , self exceptionProxy printString
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