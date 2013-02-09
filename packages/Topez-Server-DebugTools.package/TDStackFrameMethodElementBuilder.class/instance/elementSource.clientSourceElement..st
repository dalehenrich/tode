as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | beh selector category ans |
  self inClass == nil
    ifTrue: [ self error: 'Cannot edit Executable Code' ].
  ^ super elementSource: methodSource clientSourceElement: clientSourceElement