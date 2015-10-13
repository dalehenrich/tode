menu actions
removeProtocolMenuAction: listElement selectionIndex: selectionIndex
  | beh clsTool newProtoName protocolDef protoName |
  protocolDef := listElement itemCache at: selectionIndex.
  protoName := protocolDef categoryName.
  beh := self theBehavior.
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool protocol: beh remove: {protoName}.
  ^ #'refreshView'