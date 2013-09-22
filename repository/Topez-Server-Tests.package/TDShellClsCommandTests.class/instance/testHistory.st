as yet unclassified
testHistory
  | clsTool clsName history newClassVersion oldClassVersion |
  clsTool := self tool.
  clsName := self mockClassName.
  history := clsTool clshistory: clsName.
  self assert: history size = 1.
  self createMockClassVersion.
  history := clsTool clshistory: clsName.
  self assert: history size = 2.
  newClassVersion := history first theClass.
  self assert: newClassVersion allInstVarNames = #(#'instanceVariable').
  oldClassVersion := history second theClass.
  self assert: oldClassVersion allInstVarNames size = 0