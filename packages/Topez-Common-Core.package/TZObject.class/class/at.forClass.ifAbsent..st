accessing printing
at: aSymbol forClass: aClassname ifAbsent: absentBlock
    ^ ((self printBlocks at: aClassname ifAbsent: absentBlock) at: aSymbol ifAbsent: absentBlock) first