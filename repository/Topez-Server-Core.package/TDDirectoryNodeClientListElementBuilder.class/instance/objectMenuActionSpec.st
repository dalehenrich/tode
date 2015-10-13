menu action specs
objectMenuActionSpec
  ^ {#('browse class' $b #'browseClassDefinitionMenuAction:selectionIndex:').
  #('browse full' $B #'browseFullClassMenuAction:selectionIndex:').
  #('class references' $N #'browseReferencesMenuAction:selectionIndex:').
  #('-').
  #('object references in session' nil #'findReferencesInMemoryMenuAction:selectionIndex:').
  #('object reference paths in repository' nil #'findReferencePathsMenuAction:selectionIndex:').
  #('-').
  #('inspect' nil #'inspectObjectMenuAction:selectionIndex:').
  #('print' $p #'printObjectMenuAction:selectionIndex:')}