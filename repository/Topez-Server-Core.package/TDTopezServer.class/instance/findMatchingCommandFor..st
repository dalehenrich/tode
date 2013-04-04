accessing
findMatchingCommandFor: token
  | matches |
  matches := self commands keys select: [ :each | each beginsWith: token ].
  matches size = 1
    ifTrue: [ ^ matches any ].
  ^ token