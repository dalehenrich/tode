accessing printing
at: aSymbol forClasses: aClassnameList put: printBlock
    aClassnameList do: [ :className | self at: aSymbol forClass: className put: printBlock ]