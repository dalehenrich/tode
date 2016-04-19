commands
editInspect
  "
  inspect [--help]
  inspect [<path>]...
"

  | contextObjects objectsIn |
  contextObjects := arguments isEmpty
    ifTrue: [ 
      objectsIn := objIn.
      {objIn} ]
    ifFalse: [ 
      objectsIn := arguments.
      arguments collect: [ :each | topez lookup: each ] ].
  self
    editObjects: contextObjects
    builderAspect: #'inspect'
    editorAspect: #'navigate'.
  ^ objectsIn