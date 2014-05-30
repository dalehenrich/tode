menu action specs
operationsMenuActionSpec
  ^ {#('source def' $d #'selectSourceDefinitionMenuAction:selectionIndex:').
  #('destination def' $r #'selectDestinationDefinitionMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:').
  #('-').
  #('full commit log entry' nil #'fullLogMenuAction:selectionIndex:').
  #('-').
  #('diff from here' nil #'diffFromHereMenuAction:selectionIndex:').
  #('diff to here' nil #'diffToHereMenuAction:selectionIndex:').
  #('-').
  #('changes for commit' nil #'changesForCommitMenuAction:selectionIndex:')}