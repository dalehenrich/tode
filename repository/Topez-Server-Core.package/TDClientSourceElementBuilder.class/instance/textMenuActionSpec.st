menu action specs
textMenuActionSpec
  ^ {#('redo' $r #'redo:' #'executeLocalMenuAction:keyboardEvent:').
  #('undo' $z #'undo:' #'executeLocalMenuAction:keyboardEvent:').
  #('-').
  #('select all' $a #'selectAll:' #'executeLocalMenuAction:keyboardEvent:').
  #('swap characters' $y #'swapChars:' #'executeLocalMenuAction:keyboardEvent:').
  #('-').
  #('find' $f #'find:' #'executeLocalMenuAction:keyboardEvent:').
  #('find again' $g #'findAgain:' #'executeLocalMenuAction:keyboardEvent:').
  #('set search string' $h #'setSearchString:' #'executeLocalMenuAction:keyboardEvent:')}