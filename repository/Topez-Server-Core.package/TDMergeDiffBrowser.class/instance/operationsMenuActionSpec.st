menu action specs
operationsMenuActionSpec
  ^ {#('source def' $d #'selectSourceDefinitionMenuAction:selectionIndex:').
  #('edit def' $e #'selectEditDefinitionMenuAction:selectionIndex:').
  #('destination def' $r #'selectDestinationDefinitionMenuAction:selectionIndex:').
  #('-').
  #('do merge' $j #'doMergeMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:')}