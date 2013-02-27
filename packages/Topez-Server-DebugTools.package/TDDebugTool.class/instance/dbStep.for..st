as yet unclassified
dbStep: stepDirective for: node
  | level stepId processOop stack |
  stackNode := node.
  stack := stackNode basicContents.
  processOop := stack process asOop.
  stepId := #(#'into' #'over') indexOf: stepDirective.
  stepId == 1
    ifTrue: [ level := 0 ]
    ifFalse: [ level := stack currentFrame frameIndex ].
  self topez disableSessionMethods.
  processResult := self topez topezClientForwarder
    dbStep: level
    forProcessOop: processOop.
  self topez ensureSessionMethodsEnabled.
  stack resetFrames