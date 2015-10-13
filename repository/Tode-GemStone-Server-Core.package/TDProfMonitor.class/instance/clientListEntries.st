client list
clientListEntries
  ^ clientListEntries := self sortKey = 'total'
    ifTrue: [ self profMonitorEntries select: [ :entry | entry total >= self tallyLimit ] ]
    ifFalse: [ self profMonitorEntries select: [ :entry | entry tally >= self tallyLimit ] ]