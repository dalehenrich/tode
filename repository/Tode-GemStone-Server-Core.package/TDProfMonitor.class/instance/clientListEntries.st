as yet unclassified
clientListEntries
  ^ (clientList := self profMonResults
    select: [ :entry | entry total >= self tallyLimit ])
    collect: [ :entry | entry printSampleString ]