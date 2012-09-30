accessing
lookupPrintBlock: aSymbol ifAbsent: absentBlock
    ^ self printBlocks
        at: aSymbol
        ifAbsent: [ 
            self == TZObject
                ifTrue: [ absentBlock value ]
                ifFalse: [ self superclass lookupPrintBlock: aSymbol ifAbsent: absentBlock ] ]