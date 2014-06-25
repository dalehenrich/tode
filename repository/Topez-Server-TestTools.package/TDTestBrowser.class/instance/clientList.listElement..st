tools
clientList: miniTool listElement: listElement
  | spacer |
  theMiniTool := miniTool.
  spacer := '  '.
  self resultSlot == 1
    ifTrue: [ 
      resultArray := {(self testResults)}.
      resultArray
        add: testSuite tests;
        add:
            testResults passed asArray , testResults failures asArray
                , testResults errors asArray;
        add: testResults expectedPasses asArray;
        add: testResults expectedDefects asArray;
        add: testResults unexpectedFailures asArray;
        add: testResults unexpectedErrors asArray;
        add: testResults unexpectedPasses asArray;
        yourself.
      ^ {(testResults printString).
      (spacer , (self testSuite tests size printString , ' tests')).
      (spacer
        ,
          (testResults runCount printString , ' run [' , self currentTestCase printString
            , ']')).
      (spacer , (testResults expectedPassCount printString , ' passes')).
      (spacer
        , (testResults expectedDefectCount printString , ' expected defects')).
      (spacer , (testResults unexpectedFailureCount printString , ' failures')).
      (spacer , (testResults unexpectedErrorCount printString , ' errors')).
      (spacer
        , (testResults unexpectedPassCount printString , ' unexpected passes'))}
        -> nil ]
    ifFalse: [ 
      | testCases |
      testCases := resultArray at: self resultSlot.
      ^ ({(testResults printString).
      (spacer , (self testSuite tests size printString , ' tests'))}
        , (testCases collect: [ :each | each printString ]) asArray sorted)
        -> nil ]