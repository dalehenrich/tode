menu action specs
windowMenuActionSpec
  ^ {#('clone window' $C #'cloneWindowMenuAction:').
  #('inspect builder' nil #'inspectBuilderMenuAction:').
  #('inspect client element' nil #'inspectWindowModelMenuAction:').
  #('list windows' $L #'listWindowsMenuAction:').
  #('print window' $P #'printClientListMenuAction:').
  #('refresh window' $l #'refreshListMenuAction:').
  #('spawn shell' 'esc' #'spawnShellMenuAction:')}