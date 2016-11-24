as yet unclassified
theSelf
  ^ (self frameContents at: 8)
    ifNil: [ self argOrTempNamed: 'self' ifAbsent: [  ] ]