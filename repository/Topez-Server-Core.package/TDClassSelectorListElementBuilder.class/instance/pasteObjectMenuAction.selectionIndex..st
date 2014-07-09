menu actions
pasteObjectMenuAction: listElement selectionIndex: selectionIndex
  | def itemAttribute result |
  selectionIndex == 0
    ifTrue: [ def := TDBehaviorDefinition className: self theClass name isMeta: self isMeta ]
    ifFalse: [ 
      itemAttribute := listElement itemCache at: selectionIndex.
      def := itemAttribute object ].
  result := def pasteTDDefinition: self objectClipboard.
  ^ result
    ifTrue: [ #'refreshList' ]
    ifFalse: [ false ]