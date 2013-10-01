as yet unclassified
objectMenuActionSpec
  ^ {#('browse code' $B #'browseFullClassMenuAction:selectionIndex:').
  #('browse class' $b #'browseClassDefinitionMenuAction:selectionIndex:').
  #('references' $N #'browseReferencesMenuAction:selectionIndex:').
  #('print' $p #'printObjectMenuAction:selectionIndex:')}