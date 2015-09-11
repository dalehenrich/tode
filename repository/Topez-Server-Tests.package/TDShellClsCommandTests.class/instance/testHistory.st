as yet unclassified
testHistory
  | history newClassVersion oldClassVersion |
  self evaluateCommandString: 'cls --help history '.
  history := self evaluateCommandString: 'cls history ' , self mockClassName.
  self assert: history size = 1.
  self createMockClassVersion.
  history := self evaluateCommandString: 'cls history ' , self mockClassName.
  self assert: history size = 2.
  newClassVersion := (history detect: [ :each | each classHistoryIndex = 2 ])
    theClass.
  self assert: newClassVersion allInstVarNames = #(#'instanceVariable').
  oldClassVersion := (history detect: [ :each | each classHistoryIndex = 1 ])
    theClass.
  self assert: oldClassVersion allInstVarNames size = 0