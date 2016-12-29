client element
objectFor: elementName ifAbsent: absentBlock
  | index |
  (self baseNodeNames includes: elementName)
    ifTrue: [ ^ self perform: (self baseNodeMap at: elementName) ].
  (self frameNames includes: elementName)
    ifTrue: [ "-frame index-"
      elementName = '-frame index-'
        ifTrue: [ ^ self frameIndex ].
      elementName = '-previous-'
        ifTrue: [ ^ self previous ].
      ^ absentBlock value ].
  index := self argAndTempNames indexOf: elementName.
  index = 0
    ifTrue: [ ^ absentBlock value ].
  ^ self argAndTempNamesAt: index