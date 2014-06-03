tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('step into' $i #'dbStepIntoMenuAction:selectionIndex:' nil #'debuggingProcess' false).
  #('step over' $o #'dbStepOverMenuAction:selectionIndex:' nil #'debuggingProcess' false).
  #('step thru' $t #'dbStepThruMenuAction:selectionIndex:' nil #'debuggingProcess' false).
  #('-').
  #('stack up' $k #'dbUpMenuAction:selectionIndex:').
  #('stack down' $j #'dbDownMenuAction:selectionIndex:').
  #('-').
  #('continue' nil #'dbContinueMenuAction:selectionIndex:' nil #'debuggingProcess' false).
  #('restart' nil #'dbRestartMenuAction:selectionIndex:' nil #'debuggingProcess' false).
  #('-')} , self methodMenuActionSpec , {#('-')} , self standardMenuActionSpec