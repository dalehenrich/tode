menu actions
toggleEnableProtocolMenuAction: listElement selectionIndex: selectionIndex
  self enableProtocol: self enableProtocol not.
  ^ #'refreshList'