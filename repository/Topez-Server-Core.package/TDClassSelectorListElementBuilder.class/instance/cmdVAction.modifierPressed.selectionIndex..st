as yet unclassified
cmdVAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-v - paste object"

  | def itemAttribute result |
  selectionIndex == 0
    ifTrue: [ 
      def := TDBehaviorDefinition
        className: self theClass name
        isMeta: self theBehavior isMeta ]
    ifFalse: [ 
      itemAttribute := listElement itemCache at: selectionIndex.
      def := itemAttribute object ].
  result := def pasteTDDefinition: self objectClipboard.
  listElement topez commitTransaction.
  ^ result
    ifTrue: [ #'refreshList' ]
    ifFalse: [ false ]