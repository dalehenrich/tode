as yet unclassified
dbStep: stepDirective for: stackPath
    | level stepId processOop stack |
    stack := (topez lookup: stackPath) basicContents stack.
    processOop := stack process asOop.
    stepId := #(#'into' #'over') indexOf: stepDirective.
    stepId == 1
        ifTrue: [ level := 0 ]
        ifFalse: [ level := stack currentFrame frameIndex ].
    processResult := self topez topezClientForwarder dbStep: level forProcessOop: processOop.
    stack resetFrames