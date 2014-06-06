accessing
lookupPath: path ifAbsent: absentBlock
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode lookupPath: path ifAbsent: absentBlock ]
    ifFalse: [ super lookupPath: path ifAbsent: absentBlock ]