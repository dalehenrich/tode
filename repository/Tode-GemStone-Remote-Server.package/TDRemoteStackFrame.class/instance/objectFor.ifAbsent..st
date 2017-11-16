private
objectFor: elementName ifAbsent: absentBlock
  | index |
  (self baseNodeNames includes: elementName)
    ifTrue: [ ^ self perform: (self baseNodeMap at: elementName) ].
  index := self argAndTempNames indexOf: elementName.
  index = 0
    ifTrue: [ ^ absentBlock value ].
  ^ self argAndTempNamesAt: index