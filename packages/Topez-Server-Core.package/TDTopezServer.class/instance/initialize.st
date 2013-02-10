accessing
initialize
  "do not persist objIn ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

  super initialize.
  MCPlatformSupport autoCommit: true.
  MCPlatformSupport autoMigrate: true.
  GsPackagePolicy current authorInitials: 'dkh'.
  objIn := TransientValue new.
  Warning
    addDefaultHandler: [ :ex | 
      | action |
      action := self topezClientForwarder informWarning: ex description.
      action == #'resume'
        ifTrue: [ ex resume ].
      action == #'debug'
        ifTrue: [ self error: 'Debug Warning: ' , ex description ] ]