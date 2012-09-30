printing
printNamedOn: aStream indent: indent
    | printBlock |
    printBlock := self class
        lookupPrintBlock: #'basicNamed'
        ifAbsent: [ ^ self basicPrintNamedOn: aStream indent: indent ].
    printBlock value: self value: aStream value: indent