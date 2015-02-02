as yet unclassified
defaultView
  self resolved
    ifTrue: [ ^ self selection ].
  self stage == #'adddedByThem'
    ifTrue: [ ^ #'ancestorVsThem' ].
  stage == #'addedByUs'
    ifTrue: [ ^ #'ancestorVsUs' ].
  stage == #'addedByBoth'
    ifTrue: [ ^ #'usVsThem' ].
  stage == #'deletedByBoth'
    ifTrue: [ ^ #'ancestorVsUs' ].
  stage == #'deletedByUs'
    ifTrue: [ ^ #'ancestorVsUs' ].
  stage == #'deletedByThem'
    ifTrue: [ ^ #'ancestorVsThem' ].
  stage == #'modifiedByBoth'
    ifTrue: [ ^ #'usVsThem' ].
  self error: 'unknown stage'