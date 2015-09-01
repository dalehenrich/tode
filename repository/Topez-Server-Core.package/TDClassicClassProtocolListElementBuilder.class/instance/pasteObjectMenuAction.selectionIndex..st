menu actions
pasteObjectMenuAction: listElement selectionIndex: selectionIndex
  | def result |
  def := (selectionIndex == 0
    or: [ self isAllProtocolSelected: listElement selection: selectionIndex ])
    ifTrue: [ TDBehaviorDefinition className: self theClass name isMeta: self isMeta ]
    ifFalse: [ listElement itemCache at: selectionIndex ].
  result := def pasteTDDefinition: self objectClipboard.
  ^ result
    ifTrue: [ #'refreshList' ]
    ifFalse: [ false ]