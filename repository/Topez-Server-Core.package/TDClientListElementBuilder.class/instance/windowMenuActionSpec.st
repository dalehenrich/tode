menu action specs
windowMenuActionSpec
  ^ {#('clone window' $C #'cloneWindowMenuAction:selectionIndex:').
  #('inspect builder' nil #'inspectBuilderMenuAction:selectionIndex:').
  #('list windows' $L #'listWindowsMenuAction:selectionIndex:').
  #('refresh window' $l #'refreshListMenuAction:selectionIndex:')}