convenience
serverTextDo: accumulateBlock with: doitString
    | text |
    text := (accumulateBlock value: doitString) renderText.
    ^ STON toString: text