accessing
platformInitialize
  "do not persist objIn ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

  MCPlatformSupport autoCommit: true.
  MCPlatformSupport autoMigrate: true.
  objIn := TransientValue new.
  (Warning respondsTo: #'addDefaultHandler:')
    ifTrue: [ 
      "3.0 only"
      false
        ifTrue: [ 
          Warning defaultHandlers isEmpty
            ifTrue: [ 
              Warning
                addDefaultHandler: [ :ex | 
                  | action |
                  action := self topezClientForwarder
                    informWarning: ex description.
                  action == #'resume'
                    ifTrue: [ ex resume ].
                  action == #'debug'
                    ifTrue: [ self error: 'Debug Warning: ' , ex description ] ] ] ].
      TDInteractionRequest defaultHandlers isEmpty
        ifTrue: [ 
          "signalled from native tODE interactions"
          TDInteractionRequest
            addDefaultHandler: [ :ex | 
              | result |
              result := self topezClientForwarder
                interactWith: (STON toString: ex interaction).
              ex response: (STON fromString: result) ] ].
      GsInteractionRequest defaultHandlers isEmpty
        ifTrue: [ 
          "signalled from GemStone base interactions"
          GsInteractionRequest
            addDefaultHandler: [ :ex | 
              | result |
              result := self topezClientForwarder
                interactWith:
                  (STON toString: ex interaction copyAsTodeInteraction).
              ex response: (STON fromString: result) ] ] ]