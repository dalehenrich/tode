accessing
platformInitialize
  "do not persist objIn ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

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
                          (self objectSerializer toString: interaction copyAsTodeInteraction).
                      ex response: (self objectSerializer fromString: result) ];
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