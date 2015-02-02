accessing
labelString
  labelString ifNotNil: [ ^ labelString ].
  self stage == #'adddedByThem'
    ifTrue: [ ^ 'added by them  ' ].
  stage == #'addedByUs'
    ifTrue: [ ^ 'added by us    ' ].
  stage == #'addedByBoth'
    ifTrue: [ ^ 'both added     ' ].
  stage == #'deletedByBoth'
    ifTrue: [ ^ 'both deleted   ' ].
  stage == #'deletedByUs'
    ifTrue: [ ^ 'deleted by us  ' ].
  stage == #'deletedByThem'
    ifTrue: [ ^ 'deleted by them' ].
  stage == #'modifiedByBoth'
    ifTrue: [ ^ 'both modified  ' ].
  stage == #'added'
    ifTrue: [ ^ 'added          ' ].
  stage == #'deleted'
    ifTrue: [ ^ 'deleted        ' ].
  stage == #'modified'
    ifTrue: [ ^ 'modified       ' ].
  self error: 'unknown stage'