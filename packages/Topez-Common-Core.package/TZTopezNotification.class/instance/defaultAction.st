exceptiondescription
defaultAction
  | evaluator answer process |
  evaluator := self exceptionProxy topez evaluator.
  evaluator exception: self exceptionProxy.
  ^ self customDefaultAction