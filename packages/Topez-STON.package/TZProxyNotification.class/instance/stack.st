accessing
stack
    stack
        ifNil: [ 
            stack := self topezClient stackFor: self context.
            stack named at: #'currentFrame' put: 1 ].
    ^ stack