synthetic fields
closureOrNil
  self isMethodForBlock
    ifTrue: [ ^ self receiver ].
  ^ nil