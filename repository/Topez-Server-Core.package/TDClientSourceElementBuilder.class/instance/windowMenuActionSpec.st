menu action specs
windowMenuActionSpec
  ^ {#('clone window' $C #'cloneWindowMenuAction:').
  #('history' nil #'clientElementHistoryWindowMenuAction:').
  #('inspect builder' nil #'inspectBuilderMenuAction:').
  #('inspect client element' nil #'inspectWindowModelMenuAction:').
  #('list windows' $L #'listWindowsMenuAction:').
  #('refresh window' $l #'refreshListMenuAction:').
  #('open workspace' 'esc' #'openWorkspaceMenuAction:selectionIndex:')}