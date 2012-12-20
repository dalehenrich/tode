convenience
serverTextDo: accumulateBlock with: doitString
    | text |
    self accumulateBlocks remove: accumulateBlock ifAbsent: [  ].
    text := (accumulateBlock value: doitString) renderText: #'display'.
    ^ STON toString: text