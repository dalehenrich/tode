accessing
childNamed: childName ifAbsent: absentBlock
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode childNamed: childName ifAbsent: absentBlock ]
        on: STONReaderError
        do: [ :ex | super childNamed: childName ifAbsent: absentBlock ] ]
    ifFalse: [ super childNamed: childName ifAbsent: absentBlock ]