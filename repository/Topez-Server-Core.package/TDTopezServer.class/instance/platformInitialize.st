accessing
platformInitialize
  "do not persist objIn ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

  MCPlatformSupport autoCommit: true.
  MCPlatformSupport autoMigrate: true.
  objIn := TransientValue new.
  (Warning respondsTo: #'addDefaultHandler:')
    ifTrue: [ 
      "3.x only"
      GsInteractionRequest defaultHandlers isEmpty
        ifTrue: [ 
          "signalled from GemStone base interactions"
          GsInteractionRequest
            addDefaultHandler: [ :ex | 
              | result handler |
              handler := GsInteractionHandler new
                defaultBlock: [ :interaction | 
                      result := self topezClientForwarder
                        interactWith:
                          (STON toUTF8EncodedString: interaction copyAsTodeInteraction).
                      ex response: (STON fromUTF8EncodedString: result) ];
                inspectBlock: [ :interaction | 
                      interaction theObject
                        editUsing:
                          ((TDEditorSpec topez: self editorAspect: #'inspect')
                            builderAspect: #'inspect';
                            yourself).
                      ex response: interaction theObject ];
                yourself.
              ex interaction interactWith: handler ] ] ]
    ifFalse: [ self platformInitialize2x ]