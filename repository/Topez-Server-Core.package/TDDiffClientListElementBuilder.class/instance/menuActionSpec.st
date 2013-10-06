menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('local def' $d #'selectLocalDefinitionMenuAction:selectionIndex:').
  #('remote def' $r #'selectRemoteDefinitionMenuAction:selectionIndex:').
  #('-').
  #('toggle diff' $t #'toggleDiffMenuAction:selectionIndex:')}
    , self basicMenuActionSpec