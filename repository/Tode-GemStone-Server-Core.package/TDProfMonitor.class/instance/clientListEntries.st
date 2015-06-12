as yet unclassified
clientListEntries
  ^ self sortKey = 'total'
    ifTrue: [ self profMonResults select: [ :entry | entry total >= self tallyLimit ] ]
    ifFalse: [ self profMonResults select: [ :entry | entry tally >= self tallyLimit ] ]