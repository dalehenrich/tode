evaluating
evaluate: line
    ^ self collectText
        ifTrue: [ self accumulateText: line ]
        ifFalse: [ self evaluateCommand: line ]