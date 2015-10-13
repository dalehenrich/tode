menu actions
pasteObjectMenuAction: listElement selectionIndex: selectionIndex
  | def result |
  self object protocol = TDProtocolDefinition allSelectorsProtocol
    ifTrue: [ def := self object asTDBehaviorDefinition ]
    ifFalse: [ def := self object ].
  result := def pasteTDDefinition: self objectClipboard.
  ^ result
    ifTrue: [ #'refreshList' ]
    ifFalse: [ false ]