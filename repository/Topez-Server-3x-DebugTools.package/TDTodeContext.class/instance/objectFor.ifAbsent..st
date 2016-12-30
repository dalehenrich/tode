client list element
objectFor: elementName ifAbsent: absentBlock
  | index map |
  map := self syntheticFrameMap.
  (map includesKey: elementName)
    ifTrue: [ ^ self perform: (map at: elementName) ].
  (self frameNames includes: elementName)
    ifTrue: [ "-frame index-"
      elementName = '-frame index-'
        ifTrue: [ ^ self frameIndex ].
      elementName = '-previous-'
        ifTrue: [ ^ self previous ].
      ^ absentBlock value ].
  map := self instVarNameMap.
  (map includesKey: elementName)
    ifTrue: [ ^ map at: elementName ].
  index := self argAndTempNames indexOf: elementName.
  index = 0
    ifTrue: [ ^ absentBlock value ].
  ^ self argAndTempNamesAt: index