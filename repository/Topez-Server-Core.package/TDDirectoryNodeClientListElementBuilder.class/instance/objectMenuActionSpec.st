menu action specs
objectMenuActionSpec
  ^ {#('browse code' $B #'browseFullClassMenuAction:selectionIndex:').
  #('browse class' $b #'browseClassDefinitionMenuAction:selectionIndex:').
  #('inspect' nil #'inspectObjectMenuAction:selectionIndex:').
  #('print' $p #'printObjectMenuAction:selectionIndex:').
  #('references' $N #'browseReferencesMenuAction:selectionIndex:')}