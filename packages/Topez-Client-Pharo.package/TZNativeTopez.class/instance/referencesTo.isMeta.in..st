as yet unclassified
referencesTo: aString isMeta: isMeta in: aClassProxyOrNil
    self setFindText: aString.
    ^ self rawInSession: [ :sess | sess referencesTo: aString isMeta: isMeta in: aClassProxyOrNil asTopezNative ]