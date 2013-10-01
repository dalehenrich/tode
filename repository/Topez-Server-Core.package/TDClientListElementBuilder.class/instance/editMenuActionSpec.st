menu action specs
editMenuActionSpec
  ^ {#('cut' $x #'cutObjectMenuAction:selectionIndex:').
  #('copy' $c #'copyObjectMenuAction:selectionIndex:').
  #('paste' $v #'pasteObjectMenuAction:selectionIndex:')}