printing
printBlockNamed: printBlockName on: aStream indent: indent
    | printBlock |
    printBlock := self class
        at: printBlockName
        forClass: self class name asString
        ifAbsent: [ ^ self basicPrintOn: aStream indent: indent ].
    printBlock value: self value: aStream value: indent