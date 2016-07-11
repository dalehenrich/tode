client list
clientListEntries
  ^ clientListEntries := self sortKey = 'total'
    ifTrue: [ self profMonitorEntries select: [ :entry | entry total >= self tallyLimit ] ]
    ifFalse: [ 
      self sortKey = 'tally'
        ifTrue: [ self profMonitorEntries select: [ :entry | entry tally >= self tallyLimit ] ]
        ifFalse: [ self error: 'Unknown sortKey: ' , self sortKey printString ] ]