tools
clientList: miniTool listElement: listElement
  | spacer |
  theMiniTool := miniTool.
  spacer := '  '.
  self resultSlot == 1
    ifTrue: [ 
      ^ {(self testResultsPrintString).
      (spacer , (tests size printString , ' tests')).
      (spacer
        ,
          (run size printString , ' run [' , self currentTestCase printString , ']')).
      (spacer , (expectedPasses size printString , ' passes')).
      (spacer , (expectedDefects size printString , ' expected defects')).
      (spacer , (unexpectedFailures size printString , ' failures')).
      (spacer , (unexpectedErrors size printString , ' errors')).
      (spacer , (unexpectedPasses size printString , ' unexpected passes'))} ]
    ifFalse: [ 
      | testCases |
      testCases := self testCasesAtResultSlot.
      ^ {(self testResultsPrintString).
      (spacer , (tests size printString , ' tests'))}
        , (testCases collect: [ :each | each printString ]) asArray sorted ]