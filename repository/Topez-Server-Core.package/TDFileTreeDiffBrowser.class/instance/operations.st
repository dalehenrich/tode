accessing
operations
  | ops |
  (self viewSameSource not or: [ self viewStOnly or: [ stFilterBlock notNil ] ])
    ifFalse: [ ^ super operations ].
  ops := super operations.
  self viewSameSource not
    ifTrue: [ ops := ops select: [ :diffOp | diffOp hasSameSource not ] ].
  stFilterBlock ifNotNil: [ ^ ops select: stFilterBlock ].
  ^ ops select: [ :operation | operation hasFileTreeSmalltalkSource ]