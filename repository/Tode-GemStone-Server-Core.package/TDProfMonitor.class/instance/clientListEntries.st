as yet unclassified
clientListEntries
  ^ (clientList := self profMonResults
    select: [ :entry | entry tally > self tallyLimit ])
    collect: [ :entry | entry printSampleString: self sortKey ]