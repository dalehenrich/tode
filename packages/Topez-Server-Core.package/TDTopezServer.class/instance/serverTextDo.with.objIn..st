convenience
serverTextDo: accumulateBlock with: doitString objIn: anObjIn
  | text |
  self accumulateBlocks remove: accumulateBlock ifAbsent: [  ].
  text := (accumulateBlock value: doitString value: anObjIn) renderText: #'display'.
  ^ STON toString: text