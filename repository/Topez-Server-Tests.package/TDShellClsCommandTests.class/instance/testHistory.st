as yet unclassified
testHistory
  | history newClassVersion oldClassVersion |
  self evaluateCommandString: 'cls --help history '.
  history := self evaluateCommandString: 'cls history ' , self mockClassName.
  self assert: history size = 1.
  self createMockClassVersion.
  history := self evaluateCommandString: 'cls history ' , self mockClassName.
  self assert: history size = 2.
  newClassVersion := history first theClass.
  self assert: newClassVersion allInstVarNames = #(#'instanceVariable').
  oldClassVersion := history second theClass.
  self assert: oldClassVersion allInstVarNames size = 0