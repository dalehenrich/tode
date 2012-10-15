as yet unclassified
sendersOf: aString
    ^ self rawInSession: [ :sess | sess sendersOf: aString ]