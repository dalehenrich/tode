menu action specs
objectMenuActionSpec
  ^ {#('browse code' $B #'browseFullClassMenuAction:').
  #('inspect' nil #'inspectObjectMenuAction:selectionIndex:').
  #('references' $N #'browseClassReferencesMenuAction:')}