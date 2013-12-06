source element builder
classForEditorNodeLookup
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode classForEditorNodeLookup ]
    ifFalse: [ super classForEditorNodeLookup ]