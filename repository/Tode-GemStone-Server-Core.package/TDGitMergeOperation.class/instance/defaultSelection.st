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
    ifTrue: [ ^ #'them' ].
  stage == #'deleted'
    ifTrue: [ ^ #'them' ].
  stage == #'modified'
    ifTrue: [ ^ #'them' ].
  self error: 'unknown stage'