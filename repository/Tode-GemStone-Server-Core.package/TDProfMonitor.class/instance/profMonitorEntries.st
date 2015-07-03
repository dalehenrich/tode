accessing
profMonitorEntries
  profMonitorEntries
    ifNil: [ 
      self objectCreationTally
        ifTrue: [ self resortByClass: self sortKey ]
        ifFalse: [ self resortBy: self sortKey ] ].
  ^ profMonitorEntries