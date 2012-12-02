convenience
serverTextDo: accumulateBlock with: doitString
    | text |
    text := (accumulateBlock value: doitString) renderText: #display.
    ^ STON toString: text