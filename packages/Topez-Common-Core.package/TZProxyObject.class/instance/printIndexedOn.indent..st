printing
printIndexedOn: aStream indent: indent
    | printBlock |
    printBlock := self class
        at: #'basicIndexed'
        forClass: self header className
        ifAbsent: [ ^ self basicPrintIndexedOn: aStream indent: indent ].
    printBlock value: self value: aStream value: indent