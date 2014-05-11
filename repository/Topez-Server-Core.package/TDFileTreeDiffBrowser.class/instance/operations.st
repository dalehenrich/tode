accessing
operations
  self viewStOnly
    ifFalse: [ ^ super operations ].
  ^ super operations
    select: [ :operation | operation hasFileTreeSmalltalkSource ]