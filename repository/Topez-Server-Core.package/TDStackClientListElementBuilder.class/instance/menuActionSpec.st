menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('step into' $i #'dbStepIntoMenuAction:selectionIndex:').
  #('step over' $o #'dbStepOverMenuAction:selectionIndex:').
  #('step thru' $t #'dbStepThruMenuAction:selectionIndex:').
  #('-').
  #('stack up' $k #'dbUpMenuAction:selectionIndex:').
  #('stack down' $j #'dbDownMenuAction:selectionIndex:').
  #('-').
  #('continue' nil #'dbContinueMenuAction:selectionIndex:').
  #('restart' nil #'dbRestartMenuAction:selectionIndex:').
  #('-')} , self methodMenuActionSpec , {#('-')} , self standardMenuActionSpec