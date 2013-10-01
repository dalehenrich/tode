menu action specs
windowMenuActionSpec
  ^ {#('clone window' $C #'cloneWindowMenuAction:selectionIndex:').
  #('list windows' $L #'listWindowsMenuAction:selectionIndex:').
  #('refresh window' $l #'refreshListMenuAction:selectionIndex:')}