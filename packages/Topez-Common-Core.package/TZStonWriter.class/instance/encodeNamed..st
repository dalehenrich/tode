writing
encodeNamed: anObject
    | dictionary |
    dictionary := TZStonMapWriter on: self.
    self with: Dictionary new do: []. "keep object accounting straight"
    writeStream nextPut: ${.
    self
        indentedDo: [ 
            self newlineIndent.
            anObject class allInstVarNames
                do: [ :each | dictionary at: each asSymbol put: (anObject instVarNamed: each) ] ].
    self newlineIndent.
    writeStream nextPut: $}