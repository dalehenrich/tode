menu action specs
operationsMenuActionSpec
  ^ {#('local def' $d #'selectLocalDefinitionMenuAction:selectionIndex:').
  #('remote def' $r #'selectRemoteDefinitionMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:').
  #('-').
  #('full commit log entry' nil #'fullLogMenuAction:selectionIndex:').
  #('diff from here' nil #'diffFromHereMenuAction:selectionIndex:')}