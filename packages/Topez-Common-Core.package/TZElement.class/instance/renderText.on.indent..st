rendering
renderText: attribute on: textStream indent: indent
    | printBlock |
    printBlock := TZObject printBlocks
        at: attribute
        forClass: self class name asString
        ifAbsent: [ ^ super renderText: attribute on: textStream indent: indent ].
    printBlock value: self value: textStream value: indent