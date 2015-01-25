as yet unclassified
defaultView
  self resolved
    ifTrue: [ ^ self selection ].
  self stage == #'adddedByThem'
    ifTrue: [ ^ #'them' ].
  stage == #'addedByUs'
    ifTrue: [ ^ #'us' ].
  stage == #'addedByBoth'
    ifTrue: [ ^ #'usVsThem' ].
  stage == #'deletedByBoth'
    ifTrue: [ ^ #'us' ].
  stage == #'deletedByUs'
    ifTrue: [ ^ #'ancestorVsUs' ].
  stage == #'deletedByThem'
    ifTrue: [ ^ #'ancestorVsThem' ].
  stage == #'modifiedByBoth'
    ifTrue: [ ^ #'usVsThem' ].
  self error: 'unknown stage'