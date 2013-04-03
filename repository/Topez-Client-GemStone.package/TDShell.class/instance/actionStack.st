evaluator engine
actionStack
    actionStack ifNil: [ actionStack := OrderedCollection new ].
    ^ actionStack