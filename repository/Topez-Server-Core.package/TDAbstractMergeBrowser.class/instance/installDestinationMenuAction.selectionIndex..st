menu actions
installDestinationMenuAction: listElement selectionIndex: selectionIndex
  | operation methodBehavior methodSource methodCategory ar |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  operation := self operations at: selectionIndex.
  methodSource := operation destination.
  methodSource ifNil: [ ^ false ].
  methodCategory := operation methodDestinationCategory.
  methodBehavior := operation methodBehavior.
  methodBehavior compile: methodSource classified: methodCategory.
  ^ true