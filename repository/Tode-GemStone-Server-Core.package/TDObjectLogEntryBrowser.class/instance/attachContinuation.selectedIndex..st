menu actions
attachContinuation: listElement selectedIndex: index
  | objectLogEntry |
  index = 0
    ifTrue: [ ^ false ].
  objectLogEntry := self objectLogEntries at: index.
  self attachContinuation: objectLogEntry.
  ^ true