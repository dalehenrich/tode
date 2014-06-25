menu actions
runTestsMenuAction: listElement selectionIndex: selectionIndex
  "listElement topez refreshViewFor: self windowId"

  self resultSlot == 1
    ifTrue: [ 
      | notDone |
      notDone := true.
      testProcess := [ 
      [ 
      | results |
      results := TestResult new.
      listElement topez refreshViewFor: self windowId.	"zero out totals"
      self testResults: results.
      testSuite run: results ]
        ensure: [ 
          notDone := false.
          testProcess := nil ] ]
        fork.
      [ testProcess notNil and: [ notDone ] ]
        whileTrue: [ 
          listElement topez refreshViewFor: self windowId.	"update totals"
          (Delay forSeconds: 1) wait ] ]
    ifFalse: [ 
      | testCase |
      selectionIndex < 3
        ifTrue: [ ^ #'refresh' ].
      testCase := (resultArray at: resultSlot) at: selectionIndex - 2.
      testCase run: self testResults ].
  ^ #'refresh'