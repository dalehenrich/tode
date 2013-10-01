menu action specs
batchMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('next match' $g #'nextMatchMenuAction:selectionIndex:').
  #('replace' $j #'performReplaceMenuAction:selectionIndex:')}