printing
printOn: aStream indent: indent
    | printBlock |
    printBlock := self class
        at: #'basic'
        forClass: self header className
        ifAbsent: [ ^ self basicPrintOn: aStream indent: indent ].
    printBlock value: self value: aStream value: indent