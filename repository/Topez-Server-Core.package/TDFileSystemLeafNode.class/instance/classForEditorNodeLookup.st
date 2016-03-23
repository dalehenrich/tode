source element builder
classForEditorNodeLookup
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode classForEditorNodeLookup ]
        on: STONReaderError
        do: [ :ex | super classForEditorNodeLookup ] ]
    ifFalse: [ super classForEditorNodeLookup ]