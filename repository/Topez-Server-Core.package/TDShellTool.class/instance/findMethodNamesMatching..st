find
findMethodNamesMatching: aString
  | organizer matches methodNames |
  organizer := ClassOrganizer cachedOrganizer.
  matches := Set new.
  ((AllUsers userWithId: 'SymbolUser') resolveSymbol: #'AllSymbols') value
    keysDo: [ :symbol | 
      (symbol isValidSelector and: [ symbol includesString: aString ])
        ifTrue: [ matches add: (NameMatch new name: symbol matching: aString) ] ].
  ^ matches