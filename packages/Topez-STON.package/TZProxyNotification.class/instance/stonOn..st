serialization
stonOn: stonWriter
    "don't serialize #topezClient"

    stonWriter
        writeObject: self
        streamMap: [ :dictionary | 
            self class allInstVarNames
                do: [ :each | 
                    each asSymbol == #'topezClient'
                        ifTrue: [ dictionary at: each asSymbol put: nil ]
                        ifFalse: [ dictionary at: each asSymbol put: (self instVarNamed: each) ] ] ]