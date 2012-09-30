printing
printOn: aStream indent: indent
    | printBlock |
    printBlock := self class lookupPrintBlock: #'basic' ifAbsent: [ ^ self basicPrintOn: aStream indent: indent ].
    printBlock value: self value: aStream value: indent