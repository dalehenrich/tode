printing
printNamedOn: aStream indent: indent
    | printBlock |
    printBlock := self class
        at: #'basicNamed'
        forClass: self header className
        ifAbsent: [ ^ self basicPrintNamedOn: aStream indent: indent ].
    printBlock value: self value: aStream value: indent