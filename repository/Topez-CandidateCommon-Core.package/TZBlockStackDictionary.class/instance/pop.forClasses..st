accessing printing
pop: aSymbol forClasses: aClassnameList
    aClassnameList do: [ :className | self pop: aSymbol forClass: className ]