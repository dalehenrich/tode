as yet unclassified
testHistory
  | clsTool history newClassVersion oldClassVersion |
  clsTool := self tool.
  history := clsTool clshistory: self mockClass.
  self assert: history size = 1.
  self createMockClassVersion.
  history := clsTool clshistory: self mockClass.
  self assert: history size = 2.
  newClassVersion := history first theClass.
  self assert: newClassVersion allInstVarNames = #(#'instanceVariable').
  oldClassVersion := history second theClass.
  self assert: oldClassVersion allInstVarNames size = 0