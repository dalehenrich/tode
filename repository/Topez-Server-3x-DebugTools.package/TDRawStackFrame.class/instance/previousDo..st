enumerating
previousDo: aBlock
  | frame result |
  frame := self previous.
  result := nil.
  [ frame notNil ] whileTrue: [ result := aBlock value: frame.
      frame := frame previous.
      frame ifNil: [ ^ result ] ].
  ^ result