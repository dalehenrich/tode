as yet unclassified
lookup: aPath with: aTopez
  ^ self
    lookup: aPath
    with: aTopez
    ifAbsent: [ ^ self error: 'No such node: ' , aPath printString ]