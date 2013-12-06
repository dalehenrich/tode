ston
stonOn: stonWriter
  stonWriter
    writeObject: self
    streamMap: [ :dictionary | 
      #(#'name' #'contents')
        do: [ :each | dictionary at: each asSymbol put: (self instVarNamed: each) ] ]