menu actions
installDestinationMenuAction: listElement selectionIndex: selectionIndex
  | operation methodSource methodBehavior methodCategory ar |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  operation := self operations at: selectionIndex.
  ar := operation stSource: operation destination.
  methodSource := ar at: 2.
  methodCategory := ar at: 1.
  methodBehavior := operation methodBehavior.
  methodBehavior compile: methodSource classified: methodCategory