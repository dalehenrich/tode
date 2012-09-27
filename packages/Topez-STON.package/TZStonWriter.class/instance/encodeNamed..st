writing
encodeNamed: anObject
    | dictionary |
    dictionary := TZStonMapWriter on: self.
    writeStream nextPut: ${.
    self
        indentedDo: [ 
            self newlineIndent.
            anObject class allInstVarNames
                do: [ :each | dictionary at: each asSymbol put: (anObject instVarNamed: each) ] ].
    self newlineIndent.
    writeStream nextPut: $}