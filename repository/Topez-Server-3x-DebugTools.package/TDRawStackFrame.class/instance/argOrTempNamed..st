accessing
argOrTempNamed: aString
  ^ self
    argOrTempNamed: aString
    ifAbsent: [ self error: 'no arg or temp named: ' , aString printString ]