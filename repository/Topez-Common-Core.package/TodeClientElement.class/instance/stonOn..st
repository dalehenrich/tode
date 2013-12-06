ston
stonOn: stonWriter
  self setBlockOops.
  stonWriter
    writeObject: self
    streamMap: [ :dictionary | 
      self stonInstVarNames
        do: [ :each | dictionary at: each asSymbol put: (self instVarNamed: each) ] ]