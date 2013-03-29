rendering
renderText: attribute on: textStream indent: indentCount
    | printBlock |
    printBlock := TZObject printBlocks
        at: attribute
        forClass: self class name asString
        ifAbsent: [ ^ super renderText: attribute on: textStream indent: indentCount ].
    printBlock value: self value: textStream value: indentCount