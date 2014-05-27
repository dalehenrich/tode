as yet unclassified
argAndTempNamesAt: index
  | frame |
  frame := self frameContents.
  frame size < (10 + index)
    ifTrue: [ ^ nil ].
  ^ frame at: 10 + index