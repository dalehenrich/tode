accessing printing
at: aSymbol forClass: aClassname ifAbsent: absentBlock
    ^ ((self at: aClassname ifAbsent: absentBlock) at: aSymbol ifAbsent: absentBlock) first