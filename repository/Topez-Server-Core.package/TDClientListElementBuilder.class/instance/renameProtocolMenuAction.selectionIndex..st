menu actions
renameProtocolMenuAction: listElement selectionIndex: selectionIndex
  | beh clsTool newProtoName itemAttribute protocolDef protoName |
  itemAttribute := listElement itemCache at: selectionIndex.
  protocolDef := itemAttribute object.
  protoName := protocolDef categoryName.
  beh := self theBehavior.
  newProtoName := (GsTextInteraction
    prompt: 'New protocol name'
    template: protoName) signal.
  newProtoName ifNil: [ ^ false ].
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool protocol: beh rename: protoName to: newProtoName.
  ^ #'refreshView'