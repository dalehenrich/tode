accessing
stack
    stack
        ifNil: [ 
            stack := self topezClient stackFor: self context.
            stack named at: #'currentFrameIndex' put: 1 ].
    ^ stack