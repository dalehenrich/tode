accessing
platformInitialize
  "do not persist objIn ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

  (Warning respondsTo: #'addDefaultHandler:')
    ifTrue: [ 
      "3.x only"
      (GsInteractionRequest perform: #'defaultHandlers') isEmpty
        ifTrue: [ 
          "signalled from GemStone base interactions"
          GsInteractionRequest
            perform: #'addDefaultHandler:'
            with: [ :ex | 
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
                            builderAspect: #'view';
                            yourself).
                      ex response: interaction theObject ];
                yourself.
              ex interaction interactWith: handler ] ] ]
    ifFalse: [ self platformInitialize2x ]