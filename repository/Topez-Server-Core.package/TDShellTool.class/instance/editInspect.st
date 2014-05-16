commands
editInspect
  "
  inspect [--help]
  inspect [<path>]...
"

  | contextObjects |
  contextObjects := arguments isEmpty
    ifTrue: [ {objIn} ]
    ifFalse: [ arguments collect: [ :each | topez lookup: each ] ].
  ^ self
    editObjects: contextObjects
    builderAspect: #'inspect'
    editorAspect: #'navigate'