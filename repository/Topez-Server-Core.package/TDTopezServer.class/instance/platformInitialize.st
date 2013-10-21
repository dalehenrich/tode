accessing
platformInitialize
  "do not persist objIn ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

  MCPlatformSupport autoCommit: true.
  MCPlatformSupport autoMigrate: true.
  objIn := TransientValue new.
  (Warning respondsTo: #'addDefaultHandler:')
    ifTrue: [ 
      "3.0 only"
      Warning defaultHandlers isEmpty
        ifTrue: [ 
          Warning
            addDefaultHandler: [ :ex | 
              | action |
              action := self topezClientForwarder informWarning: ex description.
              action == #'resume'
                ifTrue: [ ex resume ].
              action == #'debug'
                ifTrue: [ self error: 'Debug Warning: ' , ex description ] ] ].
      TDInteractionRequest defaultHandlers isEmpty
        ifTrue: [ 
          TDInteractionRequest
            addDefaultHandler: [ :ex | 
              | result |
              result := self topezClientForwarder
                interactWith: (STON toString: ex interaction).
              ex response: (STON fromString: result) ] ] ]