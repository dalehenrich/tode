as yet unclassified
homeFrameSelf
  ^ self isMethodForBlock
    ifTrue: [ | homeFrame |
      homeFrame := self homeFrame.
      homeFrame ifNotNil: [ homeFrame rawSelf ] ifNil: [ self frameSelf ] ]
    ifFalse: [ self rawSelf ]