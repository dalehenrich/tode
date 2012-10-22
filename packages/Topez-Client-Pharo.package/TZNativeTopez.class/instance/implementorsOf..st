as yet unclassified
implementorsOf: aString
    self setFindText: aString.
    ^ self rawInSession: [ :sess | sess implementorsOf: aString ]