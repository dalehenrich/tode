as yet unclassified
stonOn: stonWriter
  stonWriter
    writeObject: self
    streamMap: [ :dictionary | 
      #(#'name' #'contents' #'creationTime' #'modificationTime')
        do: [ :each | dictionary at: each asSymbol put: (self instVarNamed: each) ] ]