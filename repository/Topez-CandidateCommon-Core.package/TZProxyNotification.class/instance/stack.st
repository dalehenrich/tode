accessing
stack
    | stk |
    ^ self client
        at: #'stack'
        ifAbsent: [ 
            stk := self topez stackFor: self.
            self client at: #'stack' put: stk.
            stk client at: #'currentFrameIndex' put: 1.
            stk client at: #'currentFrame' put: nil.
            stk ]