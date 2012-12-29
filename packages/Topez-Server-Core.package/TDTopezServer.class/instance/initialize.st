accessing
initialize
  super initialize.
  Warning
    addDefaultHandler: [ :ex | 
      | action |
      action := self topezClientForwarder informWarning: ex description.
      action == #'resume'
        ifTrue: [ ex resume ].
      action == #'debug'
        ifTrue: [ self error: 'Debug Warning: ' , ex description ] ]