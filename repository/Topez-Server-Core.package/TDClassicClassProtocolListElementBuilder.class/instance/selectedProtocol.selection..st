private
selectedProtocol: listElement selection: selectionIndex
  | protocol protocolDef |
  protocolDef := listElement itemCache at: selectionIndex.
  ^ protocolDef methodProtocol