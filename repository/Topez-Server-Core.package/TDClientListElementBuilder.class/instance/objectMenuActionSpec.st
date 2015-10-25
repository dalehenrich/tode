menu action specs
objectMenuActionSpec
  ^ {#('inspect' nil #'inspectObjectMenuAction:selectionIndex:').
  #('print' $p #'printObjectMenuAction:selectionIndex:').
  #('-').
  #('workspace' 'esc' #'openWorkspaceMenuAction:selectionIndex:')}