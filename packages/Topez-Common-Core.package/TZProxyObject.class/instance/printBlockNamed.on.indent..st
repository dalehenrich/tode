printing
printBlockNamed: printBlockName on: aStream indent: indent
    | printBlock |
    printBlock := self class
        at: printBlockName
        forClass: self header className
        ifAbsent: [ ^ self basicPrintOn: aStream indent: indent ].
    printBlock value: self value: aStream value: indent