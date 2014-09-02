tools
clientList: miniTool listElement: listElement
  | spacer |
  theMiniTool := miniTool.
  spacer := '  '.
  self resultSlot == 1
    ifTrue: [ 
      | summary text attributes |
      summary := {(self testResultsPrintString).
      (spacer , (tests size printString , ' tests')).
      (spacer
        ,
          (run size printString , ' run [' , self currentTestCase printString , ']')).
      (spacer , (expectedPasses size printString , ' passes')).
      (spacer , (expectedDefects size printString , ' expected defects')).
      (self resultsTextFor: unexpectedFailures spacer: spacer label: 'failures').
      (self resultsTextFor: unexpectedErrors spacer: spacer label: 'errors').
      (self
        resultsTextFor: unexpectedPasses
        spacer: spacer
        label: 'unexpected passes')}.
      ^ summary -> nil ]
    ifFalse: [ 
      | testCases |
      testCases := self testCasesAtResultSlot.
      ^ ({(self testResultsPrintString).
      (spacer , (tests size printString , ' tests'))}
        , (testCases collect: [ :each | each printString ]) asArray sorted)
        -> nil ]