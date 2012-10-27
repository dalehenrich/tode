as yet unclassified
lookup: aPath
    ^ self lookupPath: (aPath findTokens: '/') ifAbsent: [ ^ self error: 'No such node: ' , aPath printString ]