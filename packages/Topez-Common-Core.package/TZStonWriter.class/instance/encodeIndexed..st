writing
encodeIndexed: anObject
    | listWriter |
    listWriter := STONListWriter on: self.
    self with: Array new do: []. "keep object accounting straight"
    writeStream nextPut: $[.
    self
        indentedDo: [ 
            self newlineIndent.
            1 to: anObject basicSize - anObject class allInstVarNames size do: [ :each | 
                [ listWriter add: (anObject basicAt: each) ]
                    on: Error
                    do: [ :ex | 
                        "as of this writing [dkh 10/23/2012 15:00], #basicAt: throws OffsetError for GsNMethod and SymbolSet"
                        "false
                            ifTrue: [ 
                                (ObjectLogEntry
                                    debug: 'encode issue'
                                    object:
                                        {ex.
                                        anObject}) addToLog ] "
                         ] ] ].
    self newlineIndent.
    writeStream nextPut: $]