accessing
operations
  (self viewStOnly or: [ stFilterBlock notNil ])
    ifFalse: [ ^ super operations ].
  stFilterBlock ifNotNil: [ ^ super operations select: stFilterBlock ].
  ^ super operations
    select: [ :operation | operation hasFileTreeSmalltalkSource ]