*topez-common-core
stonOn: stonWriter
    stonWriter
        writeObject: self
        streamMap: [ :dictionary | #('rgb') do: [ :each | dictionary at: each asSymbol put: (self instVarNamed: each) ] ]