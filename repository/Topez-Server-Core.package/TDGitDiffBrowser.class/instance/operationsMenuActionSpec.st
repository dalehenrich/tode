menu action specs
operationsMenuActionSpec
  ^ {#('local def' $d #'selectLocalDefinitionMenuAction:selectionIndex:').
  #('remote def' $r #'selectRemoteDefinitionMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:').
  #('-').
  #('file history' nil #'commitFileHistory:selectionIndex:' nil #'fileHistory' false).
  #('full history' nil #'commitHistory:selectionIndex:' nil #'fullHistory' false)}