as yet unclassified
tslist
  "ts list [errors|failures| passed|expectedDefects|unexpectedPassed]"

  | testNode section res |
  testNode := self topez lookup: self defaultHomeTestPath.
  tokens size = 1
    ifTrue: [ ^ self testSummary: testNode ].
  section := tokens at: 2.
  res := self topez lookup: testNode printString , 'result/' , section.
  res := res dotSelfObject sort: [ :a :b | a printString <= b printString ].
  res editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ res