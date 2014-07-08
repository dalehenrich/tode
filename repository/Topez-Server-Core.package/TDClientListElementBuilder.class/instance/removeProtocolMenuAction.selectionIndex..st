menu actions
removeProtocolMenuAction: listElement selectionIndex: selectionIndex
  | beh clsTool newProtoName itemAttribute protocolDef protoName |
  itemAttribute := listElement itemCache at: selectionIndex.
  protocolDef := itemAttribute object.
  protoName := protocolDef categoryName.
  beh := self theBehavior.
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool protocol: beh remove: {protoName}.
  ^ #'refreshView'