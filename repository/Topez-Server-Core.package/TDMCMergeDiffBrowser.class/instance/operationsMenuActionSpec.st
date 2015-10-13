menu action specs
operationsMenuActionSpec
  ^ {#('source def' $d #'selectSourceDefinitionMenuAction:selectionIndex:').
  #('edit def' $e #'selectEditDefinitionMenuAction:selectionIndex:').
  #('destination def' $r #'selectDestinationDefinitionMenuAction:selectionIndex:').
  #('-').
  #('do merge' $j #'doMergeMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:').
  #('toggle view same source' nil #'toggleViewSameSource:selectionIndex:').
  #('-').
  #('set (clear) class filter' nil #'selectClassOperations:selectionIndex:')}