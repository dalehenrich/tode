*topez-common-core
stonOn: stonWriter
    "workaround for https://github.com/svenvc/ston/issues/4"

    stonWriter
        writeObject: self
        streamMap: [ :dictionary | self class allInstVarNames do: [ :each | dictionary at: each asSymbol put: (self instVarNamed: each) ] ]