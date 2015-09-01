menu actions
renameProtocolMenuAction: listElement selectionIndex: selectionIndex
  | beh clsTool newProtoName protocolDef protoName |
  protocolDef := listElement itemCache at: selectionIndex.
  protoName := protocolDef categoryName.
  beh := self theBehavior.
  newProtoName := (GsTextInteraction
    prompt: 'New protocol name'
    template: protoName) signal.
  newProtoName ifNil: [ ^ false ].
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool protocol: beh rename: protoName to: newProtoName.
  ^ #'refreshView'