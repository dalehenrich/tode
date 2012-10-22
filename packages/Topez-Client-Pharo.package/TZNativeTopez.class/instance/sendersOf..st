as yet unclassified
sendersOf: aString
    self setFindText: aString.
    ^ self rawInSession: [ :sess | sess sendersOf: aString ]