accessing
terminateProcessOnClose
  terminateProcessOnClose ifNil: [ terminateProcessOnClose := false ].
  ^ terminateProcessOnClose