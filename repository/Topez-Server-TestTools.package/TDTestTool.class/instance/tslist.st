as yet unclassified
tslist
  "ts list [ [errors|failures| passed|expectedDefects|unexpectedPassed] ... ]"

  | sections |
  tokens size = 1
    ifTrue: [ ^ self testSummary ].
  sections := tokens copyFrom: 2 to: tokens size.
  ^ self tslist: sections openEditor: true