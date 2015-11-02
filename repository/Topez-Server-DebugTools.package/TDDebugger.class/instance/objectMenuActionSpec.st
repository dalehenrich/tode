tools
objectMenuActionSpec
  ^ {#('browse class' $b #'browseClassDefinitionMenuAction:selectionIndex:').
  #('browse full' $B #'browseFullClassMenuAction:selectionIndex:').
  #('references' $N #'browseReferencesMenuAction:selectionIndex:').
  #('print' $p #'printObjectMenuAction:selectionIndex:').
  #('-').
  #('workspace' 'esc' #'openWorkspaceMenuAction:selectionIndex:')}