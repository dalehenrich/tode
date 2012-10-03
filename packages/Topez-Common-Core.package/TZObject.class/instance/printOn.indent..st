printing
printOn: aStream indent: indent
    | printBlock |
    printBlock := self class
        at: #'basic'
        forClass: self class name asString
        ifAbsent: [ ^ self basicPrintOn: aStream indent: indent ].
    printBlock value: self value: aStream value: indent