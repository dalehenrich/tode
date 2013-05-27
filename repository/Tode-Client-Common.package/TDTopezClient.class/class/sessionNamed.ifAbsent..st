class initialization
sessionNamed: aString ifAbsent: absentBlock
  SessionMap ifNil: [ ^ absentBlock value ].
  ^ SessionMap at: aString ifAbsent: absentBlock