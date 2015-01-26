as yet unclassified
defaultSelection
  self stage == #'adddedByThem'
    ifTrue: [ ^ #'them' ].
  stage == #'addedByUs'
    ifTrue: [ ^ #'us' ].
  stage == #'addedByBoth'
    ifTrue: [ ^ #'us' ].
  stage == #'deletedByBoth'
    ifTrue: [ ^ #'us' ].
  stage == #'deletedByUs'
    ifTrue: [ ^ #'us' ].
  stage == #'deletedByThem'
    ifTrue: [ ^ #'us' ].
  stage == #'modifiedByBoth'
    ifTrue: [ ^ #'us' ].
  stage == #'added'
    ifTrue: [ ^ #'us' ].
  stage == #'deleted'
    ifTrue: [ ^ #'us' ].
  stage == #'modified'
    ifTrue: [ ^ #'us' ].
  self error: 'unknown stage'