menu action specs
operationsMenuActionSpec
  ^ {#('destination def' $d #'selectDestinationDefinitionMenuAction:selectionIndex:').
  #('source def' $r #'selectSourceDefinitionMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:').
  #('-').
  #('file history' nil #'commitFileHistory:selectionIndex:' nil #'fileHistory' false).
  #('full history' nil #'commitHistory:selectionIndex:' nil #'fullHistory' false)}