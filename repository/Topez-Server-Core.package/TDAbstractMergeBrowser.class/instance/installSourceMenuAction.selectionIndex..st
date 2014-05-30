menu actions
installSourceMenuAction: listElement selectionIndex: selectionIndex
  | operation methodBehavior methodSource methodCategory ar |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  operation := self operations at: selectionIndex.
  methodSource := operation source.
  methodSource ifNil: [ ^ false ].
  methodCategory := operation methodSourceCategory.
  methodBehavior := operation methodBehavior.
  methodBehavior compile: methodSource classified: methodCategory.
  ^ true