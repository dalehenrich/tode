menu action specs
operationsMenuActionSpec
  ^ {#('local def' $d #'selectLocalDefinitionMenuAction:selectionIndex:').
  #('remote def' $r #'selectRemoteDefinitionMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:').
  #('-').
  #('file history' nil #'commitFileHistory:selectionIndex:' nil #'operationSelected' false).
  #('full history' nil #'commitHistory:selectionIndex:')}