rendering
renderText: attribute on: textStream indent: indent
    | printBlock |
    printBlock := self class printBlocks
        at: attribute
        forClass: self renderLookupKey
        ifAbsent: [ ^ self basicPrintOn: textStream indent: indent ].
    printBlock value: self value: textStream value: indent