as yet unclassified
findMatchingClasses: aString
    ^ self rawInSession: [ :sess | sess findMatchingClasses: aString ]