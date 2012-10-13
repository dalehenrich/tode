as yet unclassified
findMatchingClassNames: aString
    ^ self rawInSession: [ :sess | sess findMatchingClassNames: aString ]