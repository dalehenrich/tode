as yet unclassified
selectedClass: listElement selectionIndex: selectionIndex
  | method |
  selectionIndex == 0
    ifTrue: [ ^ self theClass ].
  self object navigateFrame: selectionIndex.
  method := self object currentFrame method.
  method inClass ifNil: [ ^ self theClass ].
  ^ method inClass theNonMetaClass