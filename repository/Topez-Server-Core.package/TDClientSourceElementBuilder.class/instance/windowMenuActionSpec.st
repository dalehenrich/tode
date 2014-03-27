menu action specs
windowMenuActionSpec
  ^ {#('clone window' $C #'cloneWindowMenuAction:').
  #('inspect builder' nil #'inspectBuilderMenuAction:').
  #('inspect client element' nil #'inspectWindowModelMenuAction:').
  #('list windows' $L #'listWindowsMenuAction:').
  #('refresh window' $l #'refreshListMenuAction:').
  #('spawn shell' 'esc' #'spawnShellMenuAction:')}