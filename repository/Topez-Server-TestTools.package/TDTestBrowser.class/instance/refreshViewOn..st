refreshing
refreshViewOn: aListElement
  "refresh view no more than once every 1.0 seconds to limit roundtrips"

  lastRefresh ifNotNil: [ :timestamp | System _timeGmtFloat - timestamp < 1.0
        ifTrue: [ ^ self ] ].
  aListElement topez refreshViewFor: self windowId.
  lastRefresh := System _timeGmtFloat