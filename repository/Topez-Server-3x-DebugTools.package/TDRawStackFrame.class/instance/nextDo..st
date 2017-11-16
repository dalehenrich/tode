enumerating
nextDo: aBlock
  | frame result |
  frame := self next.
  result := nil.
  [ frame notNil ] whileTrue: [ result := aBlock value: frame.
      frame := frame next.
      frame ifNil: [ ^ result ] ].
  ^ result