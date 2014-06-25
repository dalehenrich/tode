menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('run' $r #'runTestsMenuAction:selectionIndex:').
  #('debug' $d #'debugTestsMenuAction:selectionIndex:' nil #'testMethod' false).
  #('-').
  #('browse full' $B #'browseFullClassMenuAction:selectionIndex:' nil #'testMethod' false).
  #('-')} , self standardMenuActionSpec