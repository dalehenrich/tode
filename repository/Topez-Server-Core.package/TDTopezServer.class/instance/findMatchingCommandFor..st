accessing
findMatchingCommandFor: token
  | matches longestMatch postfix |
  postfix := longestMatch := ''.
  token isEmpty
    ifTrue: [ matches := self commands keys ]
    ifFalse: [ 
      matches := self commands keys select: [ :each | each beginsWith: token ].
      longestMatch := self shortestMatchFor: token from: matches ].
  matches size = 1
    ifTrue: [ postfix := ' ' ].
  ^ {''.
  matches.
  postfix.
  longestMatch}