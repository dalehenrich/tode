as yet unclassified
lookup: aPath with: aTopez
    self topez: aTopez.
    ^ self lookupPath: (aPath findTokens: '/') ifAbsent: [ ^ self error: 'No such node: ' , aPath printString ]