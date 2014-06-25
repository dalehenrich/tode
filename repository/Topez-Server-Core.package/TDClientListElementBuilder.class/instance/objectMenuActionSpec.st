menu action specs
objectMenuActionSpec
  ^ {#('browse code' $B #'browseFullClassMenuAction:selectionIndex:').
  #('browse class' $b #'browseClassDefinitionMenuAction:selectionIndex:').
  #('class references' $N #'browseReferencesMenuAction:selectionIndex:').
  #('-').
  #('inspect' nil #'inspectObjectMenuAction:selectionIndex:').
  #('print' $p #'printObjectMenuAction:selectionIndex:')}