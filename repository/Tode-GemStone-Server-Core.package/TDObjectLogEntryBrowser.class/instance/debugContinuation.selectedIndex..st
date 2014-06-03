menu actions
debugContinuation: listElement selectedIndex: index
  "broken in 3.2 and possibly 3.x ... just use attach until further notice"

  | objectLogEntry process |
  index = 0
    ifTrue: [ ^ false ].
  objectLogEntry := self objectLogEntries at: index.
  objectLogEntry isResumable
    ifTrue: [ self attachContinuation: objectLogEntry ]
    ifFalse: [ self attachContinuation: objectLogEntry ].
  ^ true