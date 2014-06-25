menu action specs
objectMenuActionSpec
  ^ {#('browse class' $b #'browseClassDefinitionMenuAction:selectionIndex:').
  #('browse full' $B #'browseFullClassMenuAction:selectionIndex:').
  #('class references' $N #'browseReferencesMenuAction:selectionIndex:').
  #('-').
  #('inspect' nil #'inspectObjectMenuAction:selectionIndex:').
  #('print' $p #'printObjectMenuAction:selectionIndex:')}