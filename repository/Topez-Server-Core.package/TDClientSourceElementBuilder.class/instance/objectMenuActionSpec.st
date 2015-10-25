menu action specs
objectMenuActionSpec
  ^ {#('inspect' nil #'inspectObjectMenuAction:selectionIndex:').
  #('references' $N #'browseClassReferencesMenuAction:').
  #('-').
  #('workspace' 'esc' #'openWorkspaceMenuAction:selectionIndex:')}