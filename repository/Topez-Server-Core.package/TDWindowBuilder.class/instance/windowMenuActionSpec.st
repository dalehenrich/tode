menu action specs
windowMenuActionSpec
  ^ {#('clone window' $C #'cloneWindowMenuAction:selectionIndex:').
  #('inspect builder' nil #'inspectBuilderMenuAction:selectionIndex:').
  #('inspect client element' nil #'inspectWindowModelMenuAction:selectionIndex:').
  #('list windows' $L #'listWindowsMenuAction:selectionIndex:').
  #('print window' $P #'printClientListMenuAction:selectionIndex:').
  #('refresh window' $l #'refreshListMenuAction:selectionIndex:').
  #('spawn shell' 'esc' #'spawnShellMenuAction:selectionIndex:')}