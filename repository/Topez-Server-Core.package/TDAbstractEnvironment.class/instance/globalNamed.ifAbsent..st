global lookup
globalNamed: aString ifAbsent: absentBlock
  ^ (self globalNamed: aString) ifNil: absentBlock