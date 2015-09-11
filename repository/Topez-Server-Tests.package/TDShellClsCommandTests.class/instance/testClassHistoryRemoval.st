as yet unclassified
testClassHistoryRemoval
  | history newClassVersion oldClassVersion clsTool cls clsVersion |
  clsTool := self tool.
  cls := self mockClass.
  history := clsTool clshistory: cls.
  self assert: history size == 1.
  clsVersion := self createMockClassVersion.
  history := clsTool clshistory: cls.
  self assert: history size == 2.
  clsTool clsRemoveClassFromClassHistory: clsVersion.
  history := clsTool clshistory: cls.
  self assert: history size == 1.
  clsTool clsRemoveClassFromClassHistory: cls.
  self assert: (Smalltalk at: self mockClassName) == nil