accessing
platformInitialize2x
  | exception |
  SessionTemps current
    at: #'GsInteractionHandlerStaticException'
    ifPresent: [ :ignored | ^ self ].
  exception := Exception
    installStaticException: [ :ex :cat :num :args | 
      | handler ans |
      (ObjectLogEntry
        trace: 'interaction'
        object:
          {ex.
          args}) addToLog.
      handler := GsInteractionHandler new
        defaultBlock: [ :interaction | 
              | result |
              result := self topezClientForwarder
                interactWith:
                  (self objectSerializer toString: interaction copyAsTodeInteraction).
              self objectSerializer fromString: result ];
        inspectBlock: [ :interaction | 
              interaction theObject
                editUsing:
                  ((TDEditorSpec topez: self editorAspect: #'inspect')
                    builderAspect: #'inspect';
                    yourself).
              interaction theObject ];
        yourself.
      (args at: 1) interactWith: handler	"resume with result of #interactWith:" ]
    category: GsInteractionRequest
    number: 121001.
  SessionTemps current at: #'GsInteractionHandlerStaticException' put: exception