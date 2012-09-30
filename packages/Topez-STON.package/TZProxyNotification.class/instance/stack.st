accessing
stack
    stack ifNil: [ stack := self topezClient stackFor: self context ].
    ^ stack