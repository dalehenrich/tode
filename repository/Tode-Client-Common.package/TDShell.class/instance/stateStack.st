evaluator engine
stateStack
  stateStack ifNil: [ stateStack := OrderedCollection new ].
  ^ stateStack