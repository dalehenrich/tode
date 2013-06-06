as yet unclassified
addResultToStack: anObject
  | index |
  anObject == self resultStack
    ifTrue: [ 
      "let's not track result of stack command"
      ^ self ].
  index := self resultStackIndex.
  index = self resultStack size
    ifTrue: [ index := 1 ]
    ifFalse: [ index := index + 1 ].
  self resultStack at: index put: anObject.
  resultStackIndex := index