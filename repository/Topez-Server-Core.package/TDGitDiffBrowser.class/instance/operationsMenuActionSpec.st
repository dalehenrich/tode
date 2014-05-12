menu action specs
operationsMenuActionSpec
  ^ {#('local def' $d #'selectLocalDefinitionMenuAction:selectionIndex:').
  #('remote def' $r #'selectRemoteDefinitionMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:').
  #('-').
  #('history' nil #'commitFileHistory:selectionIndex:')}