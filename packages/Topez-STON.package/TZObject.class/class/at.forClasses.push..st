accessing printing
at: aSymbol forClasses: aClassnameList push: printBlock
    aClassnameList do: [ :className | self at: aSymbol forClass: className push: printBlock ]