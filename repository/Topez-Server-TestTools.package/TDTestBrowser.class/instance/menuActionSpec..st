menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('run' $r #'runTestsMenuAction:selectionIndex:').
  #('-')} , self standardMenuActionSpec