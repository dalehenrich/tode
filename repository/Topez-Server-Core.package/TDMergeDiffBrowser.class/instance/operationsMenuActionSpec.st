menu action specs
operationsMenuActionSpec
  ^ {#('local def' $d #'selectLocalDefinitionMenuAction:selectionIndex:').
  #('edit def' $e #'selectEditDefinitionMenuAction:selectionIndex:').
  #('remote def' $r #'selectRemoteDefinitionMenuAction:selectionIndex:').
  #('-').
  #('do merge' $j #'doMergeMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:')}