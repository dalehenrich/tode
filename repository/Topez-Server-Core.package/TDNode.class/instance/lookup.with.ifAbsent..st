as yet unclassified
lookup: aPath with: aTopez ifAbsent: absentBlock
  self topez: aTopez.
  ^ self lookupPath: (aPath findTokens: '/') ifAbsent: absentBlock