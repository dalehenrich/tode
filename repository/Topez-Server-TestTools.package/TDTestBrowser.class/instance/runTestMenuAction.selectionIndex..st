menu actions
runTestMenuAction: listElement selectionIndex: selectionIndex
  | testCase |
  selectionIndex < 3
    ifTrue: [ ^ #'refresh' ].
  testCase := self testCasesAtResultSlot at: selectionIndex - 2.
  self log: '================Run ' , testCase printString , '================'.
  self resetResultsBeforeRun: {testCase}.
  testCase run: testResults.
  self finishedTestResults.
  ^ #'refresh'