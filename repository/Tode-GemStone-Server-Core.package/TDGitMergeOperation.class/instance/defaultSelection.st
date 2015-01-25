as yet unclassified
defaultSelection
  self stage == #'adddedByThem'
    ifTrue: [ ^ #'them' ].	"them vs ancestor"
  stage == #'addedByUs'
    ifTrue: [ ^ #'us' ].	"us vs ancestor"
  stage == #'addedByBoth'
    ifTrue: [ ^ #'us' ].	"us vs them diff"
  stage == #'deletedByBoth'
    ifTrue: [ ^ #'us' ].	"us vs ancestor"
  stage == #'deletedByUs'
    ifTrue: [ ^ #'us' ].	"us vs ancestor"
  stage == #'deletedByThem'
    ifTrue: [ ^ #'us' ].	"us vs ancestor"
  stage == #'modifiedByBoth'
    ifTrue: [ ^ #'us' ].	"us vs them diff"
  self error: 'unknown stage'