as yet unclassified
lookup: aPath with: aTopez
    ^ (self lookupPath: (aPath findTokens: '/') ifAbsent: [ ^ self error: 'No such node: ' , aPath printString ])
        topez: aTopez;
        yourself