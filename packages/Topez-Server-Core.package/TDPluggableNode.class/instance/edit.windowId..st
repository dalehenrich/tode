as yet unclassified
edit: aTopez windowId: windowId
  editBlock ifNil: [ ^ super edit: aTopez windowId: windowId ].
  ^ self editBlock
    value: self
    value: aTopez
    value: theTokens
    value: windowId