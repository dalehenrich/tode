exceptiondescription
defaultAction
    | evaluator |
    evaluator := self exceptionProxy topez evaluator.
    evaluator exception: self exceptionProxy.
    Transcript
        cr;
        show: self class name asString , ' defaultAction: ' , self exceptionProxy printString