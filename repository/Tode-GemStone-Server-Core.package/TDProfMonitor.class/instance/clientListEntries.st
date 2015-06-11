as yet unclassified
clientListEntries
  ^ self profMonResults select: [ :entry | entry total >= self tallyLimit ]