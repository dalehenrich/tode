status
status: aSymbol
  status := aSymbol.
  self event: (TDTodoEvent status: status)