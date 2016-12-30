client list element
objectFor: elementName ifAbsent: absentBlock
  | index map |
  map := self syntheticFrameMap.
  (map includesKey: elementName)
    ifTrue: [ ^ self perform: (map at: elementName) ].
  index := self argAndTempNames indexOf: elementName.
  index = 0
    ifTrue: [ ^ absentBlock value ].
  ^ self argAndTempNamesAt: index