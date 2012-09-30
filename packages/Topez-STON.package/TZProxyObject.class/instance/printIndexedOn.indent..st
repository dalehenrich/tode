printing
printIndexedOn: aStream indent: indent
    | printBlock |
    printBlock := self class
        lookupPrintBlock: #'basicIndexed'
        ifAbsent: [ ^ self basicPrintIndexedOn: aStream indent: indent ].
    printBlock value: self value: aStream value: indent