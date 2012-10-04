rendering
renderText: attribute on: textStream indent: indent
    | printBlock |
    printBlock := self class
        at: attribute
        forClass: self class name asString
        ifAbsent: [ ^ self basicPrintOn: textStream indent: indent ].
    printBlock value: self value: textStream value: indent