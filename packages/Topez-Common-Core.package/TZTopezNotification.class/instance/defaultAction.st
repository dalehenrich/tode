exceptiondescription
defaultAction
  | evaluator |
  evaluator := self exceptionProxy topez evaluator.
  evaluator exception: self exceptionProxy.
  UIManager default inform: self class name asString , ' defaultAction: ' , self exceptionProxy printString