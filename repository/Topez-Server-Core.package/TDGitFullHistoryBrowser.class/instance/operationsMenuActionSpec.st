menu action specs
operationsMenuActionSpec
  ^ {#('full commit log entry' nil #'fullLogMenuAction:selectionIndex:').
  #('changes for commit' nil #'changesForCommitMenuAction:selectionIndex:').
  #('-').
  #('find SHA' nil #'selectEntryMatchingSHA:selectionIndex:').
  #('-').
  #('diff from here' nil #'diffFromHereMenuAction:selectionIndex:').
  #('diff to here' nil #'diffToHereMenuAction:selectionIndex:')}