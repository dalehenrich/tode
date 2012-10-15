as yet unclassified
implementorsOf: aString
    ^ self rawInSession: [ :sess | sess implementorsOf: aString ]