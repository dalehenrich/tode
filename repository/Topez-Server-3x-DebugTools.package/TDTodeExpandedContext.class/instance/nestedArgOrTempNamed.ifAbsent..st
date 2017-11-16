synthetic fields
nestedArgOrTempNamed: elementName ifAbsent: absentBlock
  | map index |
  map := self nestedArgAndTempVarNamesMap.
  (map includesKey: elementName)
    ifTrue: [ ^ map at: elementName ].
  index := self argAndTempNames indexOf: elementName.
  index = 0
    ifTrue: [ ^ absentBlock value ].
  ^ self argAndTempNamesAt: index