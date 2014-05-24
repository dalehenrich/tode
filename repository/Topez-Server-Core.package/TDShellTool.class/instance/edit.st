commands
edit
  "
  edit [--help]
  edit [--print|-p] [<path>]...

  edit [--inspect|-i] [<path>]...
  edit [--navigate|-n] [<path>]...
  edit [--editorAspect=<aspect>] [--builderAspect=<aspect>] [<path>]...
"

  | contextObjects builderAspect editorAspect |
  contextObjects := arguments isEmpty
    ifTrue: [ {objIn} ]
    ifFalse: [ arguments collect: [ :each | topez lookup: each ] ].
  options
    at: 'print'
    ifPresent: [ :ignored | 
      contextObjects
        do: [ :contextObject | contextObject printUsing: (TDEditorSpec topez: topez editorAspect: #'edit') ].
      ^ contextObjects ].
  builderAspect := #'view'.
  editorAspect := #'edit'.
  options
    at: 'inspect'
    ifPresent: [ :aspect | 
      editorAspect := #'navigate'.
      builderAspect := #'inspect' ].
  options at: 'navigate' ifPresent: [ :aspect | editorAspect := #'navigate' ].
  options
    at: 'builderAspect'
    ifPresent: [ :aspect | builderAspect := aspect asSymbol ].
  options
    at: 'editorAspect'
    ifPresent: [ :aspect | editorAspect := aspect asSymbol ].
  ^ self
    editObjects: contextObjects
    builderAspect: builderAspect
    editorAspect: editorAspect