menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {{('Run'
    ->
      {#('all' nil #'runAllTestsMenuAction:selectionIndex:').
      #('passes' nil #'runPassesTestsMenuAction:selectionIndex:').
      #('expected defects' nil #'runExpectedDefectsTestsMenuAction:selectionIndex:').
      #('failures' nil #'runFailuresTestsMenuAction:selectionIndex:').
      #('errors' nil #'runErrorsTestsMenuAction:selectionIndex:').
      #('unexpected passes' nil #'runUnexpectedPassesTestsMenuAction:selectionIndex:')})}.
  #('-').
  {('Debug' -> {#('all' nil #'debugAllTestsMenuAction:selectionIndex:')})}.
  #('-').
  #('run' $r #'runTestMenuAction:selectionIndex:' nil #'testMethod' false).
  #('debug' $d #'debugTestMenuAction:selectionIndex:' nil #'testMethod' false).
  #('-').
  #('browse full' $B #'browseFullClassMenuAction:selectionIndex:' nil #'testMethod' false).
  #('-')} , self standardMenuActionSpec