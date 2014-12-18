accessing
findMatchingCommandFor: token
  ^ self commands keys select: [ :each | each beginsWith: token ]