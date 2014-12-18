accessing
findMatchingCommandFor: token
  token isEmpty
    ifTrue: [ ^ self commands keys ].
  ^ self commands keys select: [ :each | each beginsWith: token ]